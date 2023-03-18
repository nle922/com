#export images to JPG format
#Need to make sure that do not downlaod all iamges from Dropbox only those with proper ext.

import os
from PIL import Image, ImageOps
current_dir = os.path.join('/Users/nlz0003/Downloads/foo')
extension = '.bmp|.BMP|.tif|.TIF|.pdf|.PDF'

for file in os.listdir(current_dir):
    if file.endswith(extension):
        img = Image.open(os.path.join(current_dir, file))
        file_jpg = os.path.splitext(file)[0]+'.jpg'
        img.save(os.path.join(current_dir, file_jpg))
        os.remove(os.path.join(current_dir, file))
