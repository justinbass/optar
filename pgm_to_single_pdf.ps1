Get-ChildItem "*pgm" | Foreach-Object { $name="$_" ; magick.exe convert -page 573.84x755.28 "$_" "$_.tempconvert.pdf" }
magick.exe convert -density 600 *.tempconvert.pdf "$name.combined.pdf"
rm *.pgm
rm *.pgm.tempconvert.pdf