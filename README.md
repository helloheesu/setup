# Mac OS X

## Mac 환경설정
* three fingers drag가 없다?!
  * --> Accessibility - Mouse&Trackpad에서, Trackpad Options -> [세손가락 드래그 설정.](http://www.idownloadblog.com/2015/06/25/three-finger-drag-gesture-os-x-el-capitan/), 스크롤 속도는 중간이 마음에 드니까 그대로.

## 시스템 환경설정
시스템 설정에서 아래 키워드들로 검색하면 어렵지 않게 찾을 수 있음
* `시계`에 날짜, 표, 구분자 표시
* `방화벽` on. 혹시 모르니까
* `잠금 화면 (sleep)` 시간 조정: 디스플레이가 꺼진 후 암호 요구 **즉시**
* `방문 사용자 (guest)` 계정 unable.
* `트랙패드` 설정
  * 탭해서 클릭하기
* 손쉬운 사용 > `트랙패드` 설정
  * 세 손가락 드래그
  * 속도 조금 빠르게.
  * spring-loading delay 야악간 더 빠르게. ([spring-loading delay?](https://www.youtube.com/watch?v=uwNt6UOeNA0))
* 번잡한 바로가기 저리 가
   * 독에서 안 쓰는 어플 지우기
   * 독에서 다운로드 폴더 고정, display as (stack말고)folder.
   * 런치패드에서 안 쓰는 어플 숨기기
* `배터리` 잔량 퍼센트 표시
* QuickLook 설정
  * [간단한 텍스트 편집](http://macnews.tistory.com/127) (--> 엘 캐피탄에서 안됨 ㅜㅜ)
  * better zip 설치 (betterzipql만을 위해 설치한다...)
  * `brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package` [참조](https://github.com/sindresorhus/quick-look-plugins)
* 아이폰 연결시 [photos](http://osxdaily.com/2015/05/31/stop-photos-opening-automatically-mac-os-x/), [itunes](http://www.guidingtech.com/39399/stop-itunes-auto-launch/) 자동 시작 해제.
* 키보드 반복입력 속도 조절, 이모티콘 활성화, Text shortcut for 특수문자 ( (별) -> ☆ ) 
* 확대/축소 : accessibility - zoom, show accessibility status in menu bar
  * (써보니까 불편함. 화면 전체에 딱 고정돼서 보이면 좋겠는데 이리저리 왔다갔다.. 그냥 display에서 모니터 해상도를 scaled- 1280x800 으로 바꿈.)
  * [ x ] keyboard shortcut, scroll gesture - ⌃⌥⌘
  * [ v ] smooth images, zoom follows keyboard focus
  * Zoom style : picture in picture

## 다른글들
* [1](http://blog.doortts.com/286), [2](https://gist.github.com/DenisIzmaylov/8c9b783dfe8ddc533693)

## 응용 프로그램 설치
* [brew](http://brew.sh) 설치, brew cask 설치 (`brew tap caskroom/cask`), cask version 설치(`brew tap caskroom/versions`), tap completion 설치(`brew install homebrew/completions/brew-cask-completion`, .bash_profile 설정도 해야 함.)
  * 크롬 설치 : `brew cask install google-chrome`
    * [크롬 종료 전에 경고 표시](https://support.google.com/chrome/answer/95631?hl=ko) : 상태바에 Chrome - Warn Before 
Quitting(⌘Q)
  * 코덱도 많고 [자막 싱크 조절](http://www.clien.net/cs2/bbs/board.php?bo_table=cm_mac&wr_id=191748&page=)도 되는 동영상 플레이어 VLC 설치 : `brew cask install vlc`
  * 이제 유료인 btt 대신 [spectacle](https://github.com/eczarny/spectacle)! : `brew cask install spectacle`
    * start at login 체크, 단축키 설정.
```
$ brew cask list
arduino		java		qlmarkdown	quicklook-json	sublime-text3
bittorrent	postman		qlprettypatch	spectacle	vlc
eclipse-jee	qlcolorcode	qlstephen	sqlitebrowser	webpquicklook
google-chrome	qlimagesize	quicklook-csv	steam		webstorm
```
```
$ brew list
bash-completion		lua			qt			unar
boost			maven			readline
brew-cask-completion	mysql			sqlite
highlight		openssl			tree
```
* 사파리 한글 깨짐 - [인코딩 설정](https://discussionskorea.apple.com/thread/6658?start=0&tstart=0)
* 카카오톡, 라인 설치. start at login.
* GetPlainText, Sip, QuickShot

## 개발 환경
* [사파리 개발자 도구 활성화](http://macs.about.com/od/usingyourmac/qt/safaridevelop.htm)
* [sublime text 3](http://www.sublimetext.com/3)도 brew cask에 있음ㅋㅋㅋㅋㅋㅋㅋ (`brew cask install sublime-text3`), [package control](https://packagecontrol.io/installation)
  * [ftp sync plugin](http://blog.readiz.com/46#.VfBvZmSqqko)
  * [material theme](https://github.com/equinusocio/material-theme) - terminal, vim 등 머티리얼로 도배! ㅋㅋ
    * vim colorscheme 바꿀때는, 구글에 슥 나오는것처럼 설치폴더에 뭔짓하려하지말고, `$ mkdir -p ~/.vim/colors` 해서 집어넣을 것.
* nodejs 설치
  * 공식페이지에서 nodejs.pkg 받아 설치.
  * `sudo npm cache clean -f` `sudo npm install -g n` -> `node -v`
  * webpack (`sudo npm install webpack -g`) 설치
* mongodb 설치 (`brew install mongodb`), jdk 설치 (`brew cask install java`)
* 이클립스 jee 설치 : `brew cask install eclipse-jee`
  * 깃 플러그인 eGit 설치. [참고](http://itmir.tistory.com/461)
* git 설치 : 터미널에서 `$ git`만 쳐도 xCode 어쩌고하면서 안내해준다.
* [워드프레스 설치](https://ko.wordpress.org/2014/01/01/mamp를-사용해서-내-컴퓨터에-워드프레스-설치하기/)
 * 안내에 따라 MAMP 설치
* [eclipse for PHP 설치](http://www.eclipse.org/downloads/packages/eclipse-php-developers/marsr)
 * [ftp 플러그인(Remote System Explorer End-User Runtime) 설치](http://pseg.or.kr/pseg/infouse/3105)
* Virtual Box 설치
* Xubuntu (Ubuntu 에서 껍데기만 더 가벼운 버전.) 설치
  * [설치과정 참고링크 - 생활코딩](https://opentutorials.org/course/488/2601)
  * 스크린샷은 없지만 꽤. [CERNatschool 깃헙위키](https://github.com/CERNatschool/getting-started/wiki/Creating-a-Xubuntu-14.04-Virtual-Machine-with-VirtualBox)
  * 껍데기만 다른거니까 [우분투 14 설치글](http://rorlab.gitbooks.io/railsguidebook/content/appendices/ubuntu14server.html) 봐도 됨.
  * i386 / amd64
    * 간단히 말해서 i386은 32비트, amd64는 64비트 머신.
    * 32비트(i386) 설치, 가상머신 위니까 너무 빡세게(64비트) 못 돌림.
  * RAM 512MB - create virtual hard disk(VDI, dynamically allocated, 8GB)
  * 설치할 때 update skip. (기본 업데이트 서버는 느리니까, 후에 다른 서버로.)
  * guest 확장 설치 (좀 오래걸림!)
    * `Device - Insert Guest Addition CD image ...`
    * 해당 경로로 터미널에서 이동한 후, `sudo ./VBoxLinuxAdditions.run`
    * 재부팅 (`sudo reboot`)
  * 업데이트
    * 제어판 - 소프트웨어&업데이트 - 서버설정을 다음으로 - 다시읽기 말고 닫기.
    * 터미널에서 `sudo apt-get update` - 서버가 ftp.daum.net 으로 잘 나오는지 확인 - `sudo apt-get upgrade`
  * iso는 지워도 된다! (근데 왜 에러났을까나ㅜㅜ) [참고](http://askubuntu.com/questions/400413/can-i-delete-the-iso-file-after-installing-ubuntu)
  * 일반 - 고급 - 클립볻,드래그앤드롭 - 양방향 설정
  * 네트워크 - 어댑터2 - VirtualBox Host-Only
  * eth0(외부와 통신) 선택. eth1:내부통신. [참고 슬라이드쉐어,7페이지](http://www.slideshare.net/sigmadream/01-virtual-box)
  * 
* [heroku for php](https://devcenter.heroku.com/articles/getting-started-with-php#introduction) - php 는 v5.5 이미 설치 돼 있음.
 * [Composer](https://getcomposer.org/doc/00-intro.md#globally)  설치
 * heroku toolbelt 설치
* Arduino IDE, processing IDE 설치
* Xcode 설치, OpenFrameworks 설치

### 터미널 설정
* [bash_profile](/.bash_profile)
* [vimrc](/.vimrc)

# Windows 8.1
* Visual Studio 2015 RC
* Chrome
* 카카오톡
* Notepad++
* sourcetree
 * [rebase 하는 방법(for amend commit message)](http://stackoverflow.com/questions/17604232/edit-a-commit-message-in-sourcetree-windows-already-pushed-to-remote)
 * 안타깝게도 push force 는 안 된다고 한다. 터미널 눌러서 해야지 뭐.
 * 언어는 영어가 낫다. '쌍방향 배치'보다는 'rebase'가 알아듣기 쉽잖아.
