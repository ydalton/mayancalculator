/*
 * This window shows the result of the calculation.
 */

[GtkTemplate(ui = "/io/github/ydalton/MayanCalculator/ui/dialog.ui")]
public class MayanCalculator.ResultWindow : Adw.Window {
	[GtkChild]
	private unowned Gtk.Label date_label;

	public ResultWindow(MayanCalculator.Application app) {
		date_label.label = app.model.get_formatted_date();
	}
}
