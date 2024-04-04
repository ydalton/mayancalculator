/*
 * This is the main application, it represents the application as a whole. It is
 * common practice to subclass the GtkApplication (in this case AdwApplication)
 * class in order to override certain properties.
 */ 

public class MayanCalculator.Application : Adw.Application {
	internal MayanCalculator.LongCountModel model;

	public Application() {
		Object(application_id: APP_ID, flags: ApplicationFlags.DEFAULT_FLAGS);
	}

	public override void activate() {
		int days_since_epoch = (int) new DateTime.now_local().to_unix()/86400;

		this.model = new MayanCalculator.LongCountModel(days_since_epoch);

		var win = this.active_window;
		if(win == null)
			win = new MayanCalculator.Window(this);
		win.present();
	}
}
