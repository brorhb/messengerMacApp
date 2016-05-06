//
//  AppDelegate.swift
//  Messenger
//
//  Created by Bror Brurberg on 04.05.2016.
//  Copyright © 2016 Bror Brurberg. All rights reserved.
//

import Cocoa
import WebKit
import Quartz

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, WKNavigationDelegate, WKUIDelegate, NSWindowDelegate {

    // MARK: Views
    
    @IBOutlet var window : NSWindow!
    @IBOutlet var view : NSView!
    @IBOutlet var loadingView : NSImageView?
    @IBOutlet var spinner : NSProgressIndicator!
    @IBOutlet var longLoading : NSTextField!
    @IBOutlet var reactivationMenuItem : NSMenuItem!
    @IBOutlet var statusItemMenuItem : NSMenuItem!
    @IBOutlet var toolbarTrenner : NSToolbarItem!
    @IBOutlet var toolbarSpacing : NSToolbarItem!
    @IBOutlet var toolbar : NSToolbar!

    // MARK: Slutt
    
    
    // MARK: FUNC
    func initWindow(window: NSWindow) {
        window.backgroundColor = NSColor.whiteColor()
        window.minSize = NSSize(width: 380,height: 376)
        window.makeMainWindow()
        window.makeKeyWindow()
        window.titlebarAppearsTransparent = true
        window.titleVisibility = .Hidden
        window.delegate = self
    }
    
    var quicklookMediaURL: NSURL? {
        didSet {
            if quicklookMediaURL != nil {
                QLPreviewPanel.sharedPreviewPanel().makeKeyAndOrderFront(nil);
            }
        }
    }
    // MARK: Slutt
    
    
    // MARK: Properties
    
    var timer : NSTimer!
    var activatedFromBackground = false
    var isFullscreen = false
    
    var statusItem = NSStatusItem()
    var statusItemConfigurationKey = "showStatusItem"
    var statusItemDefault = true
    
    // MAARK: Slutt
    
    
    
    var webView : WKWebView!

    
    
    // MARK: NSApplication
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // initWindow
        // initWindow(window)
    }
    // MARK: Slutt
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
    // MARK: Close on last open window closed
    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
    }
    // MARK: Slutt
    
    
    // MARK: 
    func changeStatusItemImage(newImage: String) {
        if let button = statusItem.button {
            let image = NSImage(named: newImage)
            image!.template = true
            button.image = image
        }
    }
    // MARK: Slutt

    // MARK: - Dock Icon
    
    func changeDockIcon() {
        NSApplication.sharedApplication().applicationIconImage = NSImage(named: "Image")
    }
    // MARK: Slutt
}


