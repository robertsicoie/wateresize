# wateresize 

Take all photos from an input directory, resize and set watermark on each photo and write it to the output directory. The input directory remains unchanged.

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
sudo apt-get install python
sudo apt-get install python-pip
sudo pip install wand
```

*Windows*
 - Install python. Known working version: 3.6.2
 - Install [ImageMagic](https://www.imagemagick.org "ImageMagic"). Known working version: 6.9.9.3 Q8 x64. You may need to set MAGICK_HOME variable.
 - Install [Wand](http://docs.wand-py.org/). Open cmd, run
```
pip install Wand
```
*Docker*
 - Install docker on your host
 - Build the docker container
```
docker build -t "wateresize" .
```
 - Run the docker container. You have to map the photos directory on your computer to a directory inside the container. For example you can map your /home/robert/Pictures home directory to /home/Pictures on the docker container.

```
docker run -v /home/robert/Pictures:/home/Pictures -t -i  wateresize
``` 
