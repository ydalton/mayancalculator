[GtkTemplate(ui = "/io/github/ydalton/MayanCalculator/ui/window.ui")]
public class MayanCalculator.Window : Adw.ApplicationWindow {
	public Window(Adw.Application app) {
		Object(application: app);
	}
}
