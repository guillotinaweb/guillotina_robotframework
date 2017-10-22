from setuptools import setup, find_packages

version = '1.0a1.dev0'

long_description = (
    open('README.rst').read() +
    '\n' +
    '\n' +
    open('CHANGES.rst').read() +
    '\n')

setup(
    name='robotframework-guillotina',
    version=version,
    description="A robot framework library for Guillotina.",
    long_description=long_description,
    classifiers=[
        'Development Status :: 3 - Alpha',
        'License :: OSI Approved :: BSD License',
        'Environment :: Web Environment',
        'Framework :: Robot Framework',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: Implementation :: CPython',
    ],
    # Get strings from http://pypi.python.org/pypi?%3Aaction=list_classifiers
    keywords='robotframework guillotina',
    author='Timo Stollenwerk & Ramon Navarro Bosch',
    author_email='stollenwerk@kitconcept.com',
    url='https://github.com/guillotinaweb/robotframework-guillotina',
    license='BSD',
    packages=find_packages(
        exclude=['ez_setup', 'examples', 'tests']
    ),
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'robotframework',
        'robotframework-selenium2library',
    ],
    entry_points="""
    # -*- Entry points: -*-
    """,
)
