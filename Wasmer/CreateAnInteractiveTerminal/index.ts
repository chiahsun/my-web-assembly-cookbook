import "xterm/css/xterm.css"

import type { Instance } from "@wasmer/sdk";
import { Terminal } from "xterm";
import { FitAddon } from "xterm-addon-fit";

const encoder = new TextEncoder();

async function main() {
    const { Wasmer, init, initializeLogger } = await import("@wasmer/sdk");
     
    await init();
    // initializeLogger("debug");
    
    const term = new Terminal({ cursorBlink: true, convertEol: true});
    const fit = new FitAddon();
    term.loadAddon(fit);
    term.open(document.getElementById("terminal")!);
    fit.fit();
    
    // https://wasmer.io/sharrattj/bash
    term.writeln("Read from registry for bash module...");
    const pkg = await Wasmer.fromRegistry("sharrattj/bash");
    term.writeln("Starting...");
    term.reset();
    
    const instance = await pkg.entrypoint!.run();
    connectStreams(instance, term);
}

function connectStreams(instance: Instance, term: Terminal) {
    const stdin = instance.stdin?.getWriter();
    term.onData(data => stdin?.write(encoder.encode(data)));
    instance.stdout.pipeTo(new WritableStream({ write: chunk => term.write(chunk)}));
    instance.stderr.pipeTo(new WritableStream({ write: chunk => term.write(chunk)}));
}

main();