from setuptools import setup

setup(name='ivs-cal',
      version='0.9',
      description='Calculator for IVS project.',
      url='https://github.com/NoName115/IVS',
      author='xbazik00',
      author_email='martin.bazik@gmail.com',
      license='GPL3',
      packages=['src'],
      zip_safe=False,
      install_requires=['PyQt5', 'numpy','wheel'],
      include_package_data=True,
      scripts=['bin/ivs-cal']
)
