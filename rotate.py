import glob
import os

from PIL import Image

def rotate(path):
    image = Image.open(path)
    rotated_image = image.rotate(90, expand=True)
    return rotated_image

def bundle_rotate(dir):
    path_list = glob.glob(dir + '\*')
    name_list = []
    ext_list = []

    for i in path_list:
        print(i)
        img = rotate(i)
        img.save(i)
        print(i)
    return

bundle_rotate('/docs/images')
