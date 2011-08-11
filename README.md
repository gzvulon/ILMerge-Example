
ILMerge.exe in build toolchain VS2010 Solution
==============================================

This Solution Demonstrate usage of ILMerge.exe in build toolchain.

File ILMerge.exe cannot be distributed due to its license,
But you can install it from here: 
http://www.microsoft.com/download/en/details.aspx?displaylang=en&id=17630
and then add it to solution (if you need it in source controll)
or use it as is - bat file can use one installed in the program files.

Build Example
=============

<pre>
------ Rebuild All started: Project: dep2, Configuration: Debug Any CPU ------
  dep2 ->$\ILMerge-Example\dep2\bin\Debug\dep2.dll
------ Rebuild All started: Project: dep1, Configuration: Debug Any CPU ------
  dep1 ->$\ILMerge-Example\dep1\bin\Debug\dep1.dll
------ Rebuild All started: Project: App, Configuration: Debug x86 ------
  App ->$\ILMerge-Example\App\bin\Debug\App.exe
      Start Debug Merging App.exe. 
  Target: "$\ILMerge-Example\App\bin\Debug\App.exe"
  target_dir:$\ILMerge-Example\App\bin\Debug\
  Config: Debug 
  Merging: '"C:\Program Files (x86)\Microsoft\ILMerge\ILMerge.exe" /wildcards /targetplatform:"v4, C:\Windows\Microsoft.NET\Framework\v4.0.30319" /out:"$\ILMerge-Example\App\bin\Debug\Output\App.exe" "$\ILMerge-Example\App\bin\Debug\App.exe" "$\ILMerge-Example\App\bin\Debug\*.dll"'
  Result: App.exe "-> $\ILMerge-Example\App\bin\Debug\Output\App.exe" 
  Merge succeded
========== Rebuild All: 3 succeeded, 0 failed, 0 skipped ==========
</pre>