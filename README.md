# MAME-bench
 Toolkit to automate MAME benchmarks, inspired by [the benchmarks JohnIV runs](http://www.mameui.info/Bench.htm "JohnIV's MAME Benchmarks")

# Current Status
## What's completed?
 * A Windows batch file that runs a full set of benchmarks.
 * INP recordings to automate generating NVRAM for the machines that need it.
 * It runs three tests of each driver.
 * It outputs to output.csv, though that needs to be cleaned up.
 
## What's problematic?
 * The output.csv isn't very clean and you want to run it through a text editor pass to clean out some text.
 * No Linux script yet. Yet. It's high on the list of things to do.

## What's next?
 * Linux script (next version, probably 0.20)
 * Convert it all to a multiplatform Python script (a ways off, version 1.0)
 * Figure out how to clean the output better so you can just feed it to a spreadsheet and start graphing. (unknown when I'll get to this; probably part of the Python overhaul)

# How to use?
 1. Extract a fresh MAME to a folder of your choice
 2. Copy the `inp-bench` folder and `benchset.bat` files to the folder you just put MAME into.
 3. Run `benchset.bat`, wait for results.
 4. Check `output.csv` (`notepad output.csv`)

# FAQ
 Q1. There are no ROMs in this folder?!
 A1. That's not a question, and no, you have to provide all necessary ROM data and CHD images yourself.