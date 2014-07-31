rename_images
=============

A Bash script to rename images (`.jpg` and `.png` files) using the
timestamp of the image.

This script has been created to scratch my own itch: I had to put
images from several sources (cameras and phones) in chronological
order. It uses `exiftool` to extract the timestamp of the image and
copies the file to the `renamed` directory as
`yyyy-mm-dd-HH-MM-SS.jpg` (or `.png`, depending on the original).

This script is unsupported, but use it if you want to.
