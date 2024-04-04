/*
 * This is the main window, the first window that appears when you start the
 * application. Usually in Gtk, we define user interfaces in an XML file ending
 * with ".ui". With the [GtkTemplate] attribute, we associate this class with
 * the specified UI file, which is located (by convention) in the ui/
 * subdirectory.
 */

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
