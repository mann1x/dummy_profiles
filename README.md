# dummy_profiles

Dummy profiles loader for UWP applications

## Installation

Run the AutoHotkey script or compile it, put the dummy_exe.exe in a subfolder "dummy_exes".

## Usage

Create a file "dummy_profiles.txt" in the folder "dummy_exes", one window title per line (eg. State of Decay 2).
Check there are no trailing spaces.

In the release zip file a txt file with some examples is included: dummy_profiles.example.txt

The script will copy the dummy_exe.exe into a new exe for each "profile" (eg. State_of_Decay_2.exe).

Now in your profile loader associate the profile to this executable.

In Logitech LGS make sure that "Lock profile while game is running" is selected.

## TODO

Trim values loaded from profiles list file
 
## Contributing
 
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
 
## History
 
Version 1.0 (2019-06-20) - First release
 
## Credits

AutoHotkey community for the examples
 
## License
 
The MIT License (MIT)

Copyright (c) 2015 Chris Kibble

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
