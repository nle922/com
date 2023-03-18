#rotate images in directory
import os
from PIL import Image, ImageOps
current_dir = os.path.join('/Users/nlz0003/Downloads/foo') #Dropbox (SES1459263)/RA Images Organized', '1933_626');
degrees = -90
extension = '.jpg'

for file in os.listdir(current_dir):
    if file.endswith(extension):
        img = Image.open(os.path.join(current_dir, file))
        img = ImageOps.expand(img,border=700,fill='black')
        img = img.rotate(degrees)
        img.save(os.path.join(current_dir, file))
        

