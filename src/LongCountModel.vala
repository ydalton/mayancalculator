/*
 * This is a "model", as in Model-View-Controller. It is created with a single
 * date, and has a single method "get_formatted_date", which returns the Mayan
 * long count date from the given date.
 *
 * https://en.wikipedia.org/wiki/Mesoamerican_Long_Count_calendar
 */

public const int unix_epoch = 1856305; 

public class MayanCalculator.LongCountModel {
	public int date { get; set; }

	public LongCountModel(int date) {
		this.date = date;
	}

	public string get_formatted_date() {
		int date = this.date + unix_epoch;

		int kin = date % 20;
		int winal = (date / 20) % 18;
		int tun = (date / (20*18)) % 20;
		int katun = (date / (20*18*20)) % 20;
		int baktun = (date / (20*18*20*20)) % 20;

		return @"$baktun.$katun.$tun.$winal.$kin";
	}
}
