[GtkTemplate(ui = "/io/github/ydalton/MayanCalculator/ui/window.ui")]
public class MayanCalculator.Window : Adw.ApplicationWindow {
	[GtkChild]
	private unowned Gtk.Label date_label;

	public Window(MayanCalculator.Application app) {
		Object(application: app);

		date_label.label = app.model.get_formatted_date();
	}
}
