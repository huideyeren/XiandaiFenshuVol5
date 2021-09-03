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
        file = os.path.basename(i)
        name, ext = os.path.splitext(file)
        name_list.append(name)
        ext_list.append(ext)

        out_path = os.path.join(*[dir, name + '_resize' + ext])

        img = rotate(i)
        img.save(out_path)
    return

bundle_rotate('/docs/images')
