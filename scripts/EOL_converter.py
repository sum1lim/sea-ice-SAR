# Convert EOL /r/n to /n

import glob

for file in glob.glob('*'):
    with open(file, 'rb+') as f:
        content = f.read()
        f.seek(0)
        f.write(content.replace(b'\r', b''))
        f.truncate()