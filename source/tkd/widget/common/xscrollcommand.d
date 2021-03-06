/**
 * XScroll Command module.
 *
 * License:
 *     MIT. See LICENSE for full details.
 */
module tkd.widget.common.xscrollcommand;

/**
 * Imports.
 */
import tkd.widget.scrollbar;

/**
 * If implemented this widget has a text display that is scrollable horizontally.
 */
interface IXScrollable(T)
{
	/**
	 * Attach a horizontal scrollbar.
	 *
	 * Params:
	 *     scrollbar = The scrollbar to attach.
	 *
	 * Returns:
	 *     This widget to aid method chaining.
	 */
	public T attachXScrollBar(XScrollBar scrollbar);
}

/**
 * These are common commands that apply to all widgets that have them injected.
 */
mixin template XScrollCommand(T)
{
	import tkd.widget.scrollbar;

	/**
	 * Attach a horizontal scrollbar.
	 *
	 * Params:
	 *     scrollbar = The scrollbar to attach.
	 */
	public T attachXScrollBar(XScrollBar scrollbar)
	{
		this._tk.eval("%s configure -xscrollcommand [list %s set]", this.id, scrollbar.id);

		return this;
	}
}
