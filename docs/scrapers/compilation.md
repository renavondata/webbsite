**Notes on compiling the VB.Net code in Visual Studio 2022 (or later)**

**Background (updated 2025-08-17)**

I originally wrote this code in VS 2019, but have now upgraded to VS
2022 on a Windows 11 PC. I have included my configuration file for
VS2022, “.vsconfig” in the VB.Net files. You might not need everything
in its list, but the list is sufficient. You can import the list using
Visual Studio Installer and it will download and install the correct
items.

**Compilation**

We chose “Console App (.NET Framework)” for creating a command-line
application.

We compile all the modules to the x64 platform.

In VS, each module should be in its own “Project” under a common
“Solution” (which, of course, we called Enigma but call it what you
like).

For most of the modules you’ll need to add a reference to the Microsoft
adodb assembly using Reference Manager/ Assemblies/ Extensions. The
current version is 7.0.3300.0. Each time you do this, set “Copy Local”
to True and “Embed Interop Types” to False.

Most modules also import our ScraperKit and some use our JSONkit so
you’ll need to add those as References using Reference Manager/
Projects/ Solution.
