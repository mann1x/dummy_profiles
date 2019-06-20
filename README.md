# dummy_profiles
Dummy profiles loader for UWP applications

Run the AutoHotkey script or compile it, put the dummy_exe.exe in a subfolder "dummy_exes".

Create a file "dummy_profiles.txt" in the folder "dummy_exes", one window title per line.
Check there are no trailing spaces.

The script will copy the dummy_exe.exe into a new exe for each "profile".

Now in your profile loader associate the profile to this executable.

In Logitech LGS make sure that "Lock profile while game is running" is selected.
