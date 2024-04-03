[GtkTemplate(ui = "/io/github/ydalton/MayanCalculator/ui/window.ui")]
public class MayanCalculator.Window : Adw.ApplicationWindow {
	private void modal_cb() {
		var app = (Application) this.get_application();
		var result = new ResultWindow(app);

		result.set_transient_for(this);
		result.present();
	}

	private const ActionEntry[] window_entries =
	{
		{ "modal", modal_cb, null, null, null },
	};

	public Window(MayanCalculator.Application app) {
		Object(application: app);

		add_action_entries(window_entries, this);
	}
}
