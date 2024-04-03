public class MayanCalculator.Application : Adw.Application {
	public Application() {
		Object(application_id: APP_ID, flags: ApplicationFlags.DEFAULT_FLAGS);
	}

	public override void activate() {
		var win = this.active_window;
		if(win == null)
			win = new MayanCalculator.Window(this);
		win.present();
	}
}
