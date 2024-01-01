// https://docs.wasmer.io/javascript-sdk
import { init, Wasmer } from "@wasmer/sdk";

await init();
// https://wasmer.io/python/python
const pkg = await Wasmer.fromRegistry("python/python");
/*const instance = await pkg.entrypoint.run({
    args: ["-c", "print('Hello, World!')"],
});

const { code, stdout } = await instance.wait();
console.log(`Python exited with ${code}: ${stdout}`);*/

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
// import { Wasmer } from "@wasmer/sdk";

// let python = Wasmer.fromRegistry("python/python");
// let instance = await python.entrypoint.run();
// let output = await instance.wait();