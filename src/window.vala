/* window.vala
 *
 * Copyright 2022 Mirko Brombin
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

namespace VanillaDevNotice {
    [GtkTemplate (ui = "/org/vanillaos/VanillaDevNotice/window.ui")]
    public class Window : Adw.ApplicationWindow {
        [GtkChild]
        private unowned Gtk.Button btn_proceed;

        [GtkChild]
        private unowned Adw.Carousel carousel;

        [GtkChild]
        private unowned Adw.PreferencesPage prefs;

        public Window (Gtk.Application app) {
            Object (application: app);

            btn_proceed.clicked.connect (() => {
                carousel.scroll_to (prefs, true);
            });
        }
    }
}
