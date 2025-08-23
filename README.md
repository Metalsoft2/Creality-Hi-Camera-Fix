# K2-Camera
A work around to get the camera working in fluidd.

#### This requires root access to be enabled on the printer.
<br>


Firmware updates may remove the changes so you may have to run the commands again after a firmware update.<br>
With any luck creality just implements this so we dont have to perform this modification.

<br>
<br>

[![https://www.youtube.com/watch?v=XHLAtVG9Bcg](https://img.youtube.com/vi/XHLAtVG9Bcg/0.jpg)](https://www.youtube.com/watch?v=XHLAtVG9Bcg)

https://www.youtube.com/watch?v=XHLAtVG9Bcg<br>



<hr>


## Install Commands
```sh
python -c "from six.moves import urllib; urllib.request.urlretrieve('https://github.com/DnG-Crafts/K2-Camera/archive/refs/heads/main.zip', '/root/main.zip')" 
python -c "import shutil; shutil.unpack_archive('/root/main.zip', '/root/')"
sh ~/K2-Camera-main/install.sh

```






<hr>

if you wish to restore the printer to its original configuration then run the commands below

## Restore Commands
```sh
sh ~/K2-Camera-main/restore.sh

```


