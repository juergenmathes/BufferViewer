from setuptools import setup

setup(
    # Needed to silence warnings (and to be a worthwhile package)
    name='flask_app',
    url='https://github.com/juergenmathes/BufferViewer',
    author='Juergen Mathes',
    # Needed to actually package something
    packages=['flask_app'],
    # Needed for dependencies
    install_requires=['numpy', 'flask', 'flask-sqlalchemy'],
    # *strongly* suggested for sharing
    version='0.1',
    # The license can be anything you like
    license='MIT',
    description='Main App running the whole flask stuff',
    # We will also need a readme eventually (there will be a warning)
    # long_description=open('README.txt').read(),
)