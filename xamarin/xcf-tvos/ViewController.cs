using System;
using System.Runtime.InteropServices;
using UIKit;

namespace xcf_tvos {
	public partial class ViewController : UIViewController {
		public ViewController (IntPtr handle) : base (handle)
		{
		}

		[DllImport ("__Internal")]
		public static extern int theUltimateAnswer ();

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			UIColor color;
			try {
				color = (theUltimateAnswer () == 42) ? UIColor.Green : UIColor.Orange;
			} catch {
				color = UIColor.Red;
			}
			View.BackgroundColor = color;
		}

		public override void DidReceiveMemoryWarning ()
		{
			base.DidReceiveMemoryWarning ();
			// Release any cached data, images, etc that aren't in use.
		}
	}
}

