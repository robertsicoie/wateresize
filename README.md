# wateresize 

Take all photos from a the input directory, resize and set watermark on each photo and write it to the output directory. The input directory remains unchanged.

## Usage
Show help message:
```
$ python wateresize.py -h
usage: wateresize.py [-h] [-w W] -i I [-o O] [-r R]

Set watermark on left-bottom corner and resize image.

optional arguments:
  -h, --help           show this help message and exit
  -w W, --watermark W  watermark image to set. If missing, watermark will not
                       be set.
  -i I, --input I      input directory (mandatory).
  -o O, --output O     output directory.
  -r R, --resize R     image resize percent. If missing will not resize image.
```
*Example*
```
$ git clone https://github.com/robertsicoie/wateresize.git
$ cd wateresize
```
Suppose your watermark is ~/Pictures/watermark/logo.png and you have your photos in ~/Pictures/my_photos/, you can run:
```
$ python wateresize.py -w ~/Pictures/watermark/logo.png -i ~/Pictures/my_photos/ -o ~/Pictures/my_photos_wateresized/ -r 50
```

## Dependencies
 - python
 - Wand

## Setup
*Ubuntu*
``` 
$ sudo apt-get install python
$ sudo apt-get install pip-python
$ sudo pip install wand
```

