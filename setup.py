from pip.req import parse_requirements
from setuptools import setup

install_reqs = parse_requirements('requirements.txt', session='dev')
reqs = [str(ir.req) for ir in install_reqs]

setup(
    name='hello',
    scripts=['hello.py'],
    install_requires=reqs,
)
