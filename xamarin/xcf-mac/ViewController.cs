﻿using System;
using System.Runtime.InteropServices;

using AppKit;
using Foundation;

namespace xcfmac {
	public partial class ViewController : NSViewController {
		public ViewController (IntPtr handle) : base (handle)
		{
		}

		[DllImport ("__Internal")]
		public static extern int theUltimateAnswer ();

		public override void ViewDidAppear ()
		{
			base.ViewDidAppear ();
			NSColor color;
			try {
				color = (theUltimateAnswer () == 42) ? NSColor.Green : NSColor.Orange;
			} catch {
				color = NSColor.Red;
			}
			View.Window.BackgroundColor = color;
		}

		public override NSObject RepresentedObject {
			get {
				return base.RepresentedObject;
			}
			set {
				base.RepresentedObject = value;
				// Update the view, if already loaded.
			}
		}
	}
}
