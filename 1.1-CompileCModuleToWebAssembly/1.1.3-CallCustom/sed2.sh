sed -i '' -e '/  \<script type="text\/javascript"\>/a\
  document.getElementById("mybutton").addEventListener("click", () => {\
    alert("check console");\
    const result = Module.ccall(\
      "myFunction", // name of C function\
      null, // return type\
      null, // argument types\
      null, // arguments\
    );\
  });' hello3.html