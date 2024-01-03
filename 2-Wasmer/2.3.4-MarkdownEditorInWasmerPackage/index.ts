// https://docs.wasmer.io/javascript-sdk/tutorials/package
import { init, Wasmer, Command, initializeLogger } from "@wasmer/sdk";

async function initialize() {
    await init();
    initializeLogger("debug");

    // return await Wasmer.fromRegistry("chiahsun/markdown-renderer@0.2.0");
    return await Wasmer.fromRegistry("wasmer-examples/markdown-renderer");
}

function debounce(func: (...args: any[]) => void, delay: number): (...args: any[]) => void {
    let debounceTimer: ReturnType<typeof setTimeout>;

    return function(...args: any[]) {
        clearTimeout(debounceTimer);
        debounceTimer = setTimeout(() => func(...args), delay);
    };
}

async function renderMarkdown(cmd: Command, markdown: string) {
    const instance = await cmd.run();
    const stdin = instance.stdin.getWriter();
    const encoder = new TextEncoder();

    await stdin.write(encoder.encode(markdown));
    await stdin.close();

    const result = await instance.wait();
    console.log(result.ok);
    return result.ok ? result.stdout : null; // stdoutUtf8 is wrong
}

async function main() {
    const pkg = await initialize();
    const output = document.getElementById("html-output") as HTMLIFrameElement;
    const markdownInput = document.getElementById("markdown-input") as HTMLTextAreaElement;

    const debouncedRender = debounce(async () => {
        const renderedHtml = await renderMarkdown(pkg.entrypoint!, markdownInput.value);
        console.log(renderedHtml);
        if (renderedHtml) {
            output.srcdoc = renderedHtml;
        }
    }, 500); // 500 milliseconds debounce period

    markdownInput.addEventListener("input", debouncedRender);
}

main();