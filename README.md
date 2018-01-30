# EsaArchiver

[![CircleCI](https://circleci.com/gh/Pegasus204/esa_archiver.svg?style=svg)](https://circleci.com/gh/Pegasus204/esa_archiver)

[esa.io](https://esa.io)�ō쐬���A�ŏI�X�V����������Ԃ��o�߂����L�����A�[�J�C�u����A�v���P�[�V�����ł��B

## Features

`.env`��`ESA_ARCHIVE_ELAPSED_MONTH`�ɁA�o�߂���������ݒ肷�邱�ƂŁA1�������ƂɋL�����A�[�J�C�u���邱�Ƃ��ł��܂��B

�o�߂��������ƁA�A�[�J�C�u�����L���̍ŏI�X�V���̊֌W�͈ȉ��̕\�̂悤�ɂȂ�܂��B
(��ł�2018�N01���𓖌��Ƃ���B)

| �o�߂������� | �A�[�J�C�u�����L���̍ŏI�X�V�� |
|:--:|:--:|
| 0 | 2018�N01�� |
| 1 | 2017�N12�� |
| 2 | 2017�N11�� |

## How to Run
### Run locally
```
$ git clone git@github.com:Pegasus204/esa_archiver.git
$ cd esa_archiver
$ bundle install
$ cp .env.sample .env
$ vi .env
// setup environment variable
```
�Ń��[�J�����\�z���s���Ă��������B

`bundle exec thor posts:archive`�����s���邱�ƂŋL�����A�[�J�C�u����܂��B

�������s�����悤��cron��ݒ肷�邱�ƂŁA�w�肵�������o�߂����L���������A�[�J�C�u���邱�Ƃ��ł��܂��B

## Test
```
$ bundle exec rspec
```
�Ńe�X�g�����s�ł��܂��B
