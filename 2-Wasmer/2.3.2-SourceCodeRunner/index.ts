// https://docs.wasmer.io/javascript-sdk
import { init, Wasmer } from "@wasmer/sdk";

await init();
const pkg = await Wasmer.fromRegistry("python/python");

const sourceInput = document.getElementById("source-input") as HTMLTextAreaElement;
const runButton = document.getElementById("run-button") as HTMLButtonElement;
runButton?.addEventListener("click", async function handleClick(event) {
    console.log("Button clicked!");
    const sourceCode = sourceInput.value;
    const instance = await pkg.entrypoint.run({
        args: ["-c", sourceCode],
    });
    const { code, stdout } = await instance.wait();
    console.log(`Python exited with ${code}: ${stdout}`);
});
runButton.style.visibility = "visible";
console.log("Ready");

// TODO: https://github.com/wasmerio/wasmer-python/tree/master/examples

