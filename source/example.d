module main;

/**
 * Imports.
 */
import std.algorithm;
import std.range;
import std.stdio;
import tkd.tkdapplication;

/**
 * Sample application.
 */
class Application : TkdApplication
{
	/**
	 * Wigets.
	 */
	private Text _text;

	/**
	 * Event callbacks.
	 */
	private void exitCommand(CommandArgs args)
	{
		this.exit();
	}

	private void execute(CommandArgs args)
	{
		writeln("Menu item selected.");
	}

	/**
	 * Initialise the user interface.
	 */
	override protected void initInterface()
	{
		auto frame = new Frame(2, ReliefStyle.groove)
			.pack();

		this._text = new Text(frame)
			.pack();

		auto xscroll = new XScrollBar(frame)
			.attachWidget(this._text)
			.pack();

		auto yscroll = new YScrollBar(frame)
			.attachWidget(this._text)
			.pack();

		this._text
			.setWidth(50)
			.setHeight(10)
			.attachXScrollBar(xscroll)
			.attachYScrollBar(yscroll);

		auto button = new Button(frame, "Exit")
			.setCommand(&this.exitCommand)
			.pack();
	}
}

/**
 * Main entry point.
 *
 * Params:
 *     args = An array of command line arguments passed to this program.
 */
void main(string[] args)
{
	auto app = new Application();
	app.run();
}
