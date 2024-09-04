project(LlfcChat)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

if(MSVC)
    add_compile_options("/utf-8")
    add_definitions(-DUNICODE -D_UNICODE)
    add_compile_options(/MP)
endif ()


set(qt_required_components Core Widgets Gui Network )
find_package(Qt5 COMPONENTS ${qt_required_components}  REQUIRED)

include_directories(.)

add_executable(${PROJECT_NAME}
        rc.qrc

        BubbleFrame.cpp
        ChatItemBase.cpp
        ChatView.cpp
        MessageTextEdit.cpp
        PictureBubble.cpp
        TextBubble.cpp
        adduseritem.cpp
        applyfriend.cpp
        applyfrienditem.cpp
        applyfriendlist.cpp
        applyfriendpage.cpp
        authenfriend.cpp
        chatdialog.cpp
        chatpage.cpp
        chatuserlist.cpp
        chatuserwid.cpp
        clickedbtn.cpp
        clickedlabel.cpp
        clickedoncelabel.cpp
        contactuserlist.cpp
        conuseritem.cpp
        customizeedit.cpp
        customizetextedit.cpp
        findfaildlg.cpp
        findsuccessdlg.cpp
        friendinfopage.cpp
        friendlabel.cpp
        global.cpp
        grouptipitem.cpp
        httpmgr.cpp
        invaliditem.cpp
        lineitem.cpp
        listitembase.cpp
        loadingdlg.cpp
        logindialog.cpp
        main.cpp
        mainwindow.cpp
        registerdialog.cpp
        resetdialog.cpp
        searchlist.cpp
        statelabel.cpp
        statewidget.cpp
        tcpmgr.cpp
        timerbtn.cpp
        userdata.cpp
        usermgr.cpp

        BubbleFrame.h
        ChatItemBase.h
        ChatView.h
        MessageTextEdit.h
        PictureBubble.h
        TextBubble.h
        adduseritem.h
        applyfriend.h
        applyfrienditem.h
        applyfriendlist.h
        applyfriendpage.h
        authenfriend.h
        chatdialog.h
        chatpage.h
        chatuserlist.h
        chatuserwid.h
        clickedbtn.h
        clickedlabel.h
        clickedoncelabel.h
        contactuserlist.h
        conuseritem.h
        customizeedit.h
        customizetextedit.h
        findfaildlg.h
        findsuccessdlg.h
        friendinfopage.h
        friendlabel.h
        global.h
        grouptipitem.h
        httpmgr.h
        invaliditem.h
        lineitem.h
        listitembase.h
        loadingdlg.h
        logindialog.h
        mainwindow.h
        registerdialog.h
        resetdialog.h
        searchlist.h
        singleton.h
        statelabel.h
        statewidget.h
        tcpmgr.h
        timerbtn.h
        userdata.h
        usermgr.h

        adduseritem.ui
        applyfriend.ui
        applyfrienditem.ui
        applyfriendpage.ui
        authenfriend.ui
        chatdialog.ui
        chatpage.ui
        chatuserwid.ui
        conuseritem.ui
        findfaildlg.ui
        findsuccessdlg.ui
        friendinfopage.ui
        friendlabel.ui
        grouptipitem.ui
        lineitem.ui
        loadingdlg.ui
        logindialog.ui
        mainwindow.ui
        registerdialog.ui
        resetdialog.ui
)


target_link_libraries(${PROJECT_NAME}
        Qt5::Core Qt5::Gui Qt5::Widgets Qt5::Network)
