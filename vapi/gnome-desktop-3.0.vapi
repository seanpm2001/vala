/* gnome-desktop-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gnome", gir_namespace = "GnomeDesktop", gir_version = "3.0", lower_case_cprefix = "gnome_")]
namespace Gnome {
	namespace DesktopThumbnail {
		[CCode (cheader_filename = "libgnome-desktop/gnome-desktop-thumbnail.h")]
		[Version (since = "2.2")]
		public static bool is_valid (Gdk.Pixbuf pixbuf, string uri, long mtime);
		[CCode (cheader_filename = "libgnome-desktop/gnome-desktop-thumbnail.h")]
		[Version (since = "2.2")]
		public static string path_for_uri (string uri, Gnome.DesktopThumbnailSize size);
	}
	namespace Languages {
		[CCode (array_length = false, array_null_terminated = true, cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_all_locales")]
		[Version (since = "3.8")]
		public static string[] get_all_locales ();
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_country_from_code")]
		[Version (since = "3.8")]
		public static string get_country_from_code (string code, string? translation);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_country_from_locale")]
		[Version (since = "3.8")]
		public static string get_country_from_locale (string locale, string? translation);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_input_source_from_locale")]
		[Version (since = "3.8")]
		public static bool get_input_source_from_locale (string locale, out unowned string type, out unowned string id);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_language_from_code")]
		[Version (since = "3.8")]
		public static string get_language_from_code (string code, string? translation);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_language_from_locale")]
		[Version (since = "3.8")]
		public static string get_language_from_locale (string locale, string? translation);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_get_translated_modifier")]
		[Version (since = "3.34")]
		public static string get_translated_modifier (string modifier, string? translation);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_language_has_translations")]
		[Version (since = "3.8")]
		public static bool language_has_translations (string code);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_normalize_locale")]
		[Version (since = "3.8")]
		public static string normalize_locale (string locale);
		[CCode (cheader_filename = "libgnome-desktop/gnome-languages.h", cname = "gnome_parse_locale")]
		[Version (since = "3.8")]
		public static bool parse_locale (string locale, out string language_codep, out string? country_codep, out string? codesetp, out string? modifierp);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg.h", type_id = "gnome_bg_get_type ()")]
	public class BG : GLib.Object {
		[CCode (has_construct_function = false)]
		public BG ();
		public bool changes_with_time ();
		public Gdk.Pixbuf create_frame_thumbnail (Gnome.DesktopThumbnailFactory factory, Gdk.Screen screen, int dest_width, int dest_height, int frame_num);
		public Cairo.Surface create_surface (Gdk.Window window, int width, int height);
		public Gdk.Pixbuf create_thumbnail (Gnome.DesktopThumbnailFactory factory, Gdk.Screen screen, int dest_width, int dest_height);
		public void draw (Gdk.Pixbuf dest);
		public unowned string get_filename ();
		public bool get_image_size (Gnome.DesktopThumbnailFactory factory, int best_width, int best_height, int width, int height);
		public GDesktop.BackgroundStyle get_placement ();
		public void get_rgba (GDesktop.BackgroundShading type, Gdk.RGBA primary, Gdk.RGBA secondary);
		[Version (deprecated = true, deprecated_since = "3.36")]
		public static Cairo.Surface get_surface_from_root (Gdk.Screen screen);
		public bool has_multiple_sizes ();
		public bool is_dark (int dest_width, int dest_height);
		public void load_from_preferences (GLib.Settings settings);
		public void save_to_preferences (GLib.Settings settings);
		public void set_filename (string filename);
		public void set_placement (GDesktop.BackgroundStyle placement);
		public void set_rgba (GDesktop.BackgroundShading type, Gdk.RGBA primary, Gdk.RGBA secondary);
		[Version (deprecated = true, deprecated_since = "3.36")]
		public static void set_surface_as_root (Gdk.Screen screen, Cairo.Surface surface);
		[Version (deprecated = true, deprecated_since = "3.36")]
		public static Gnome.BGCrossfade set_surface_as_root_with_crossfade (Gdk.Screen screen, Cairo.Surface surface);
		public signal void changed ();
		public signal void transitioned ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h", type_id = "gnome_bg_crossfade_get_type ()")]
	public class BGCrossfade : GLib.Object {
		[CCode (has_construct_function = false)]
		public BGCrossfade (int width, int height);
		public bool is_started ();
		public bool set_end_surface (Cairo.Surface surface);
		public bool set_start_surface (Cairo.Surface surface);
		public void start (Gdk.Window window);
		public void stop ();
		[NoAccessorMethod]
		public int height { get; construct; }
		[NoAccessorMethod]
		public int width { get; construct; }
		public virtual signal void finished (GLib.Object window);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-slide-show.h", type_id = "gnome_bg_slide_show_get_type ()")]
	public class BGSlideShow : GLib.Object {
		[CCode (has_construct_function = false)]
		public BGSlideShow (string filename);
		public void get_current_slide (int width, int height, out double progress, out double duration, out bool is_fixed, out unowned string file1, out unowned string file2);
		public bool get_has_multiple_sizes ();
		public int get_num_slides ();
		public bool get_slide (int frame_number, int width, int height, out double progress, out double duration, out bool is_fixed, out unowned string file1, out unowned string file2);
		public double get_start_time ();
		public double get_total_duration ();
		public bool load () throws GLib.Error;
		public void load_async (GLib.Cancellable? cancellable, GLib.AsyncReadyCallback callback);
		[NoAccessorMethod]
		[Version (since = "3.34")]
		public GLib.File file { owned get; construct; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "3.34")]
		public string filename { owned get; construct; }
		public bool has_multiple_sizes { get; }
		public double start_time { get; }
		public double total_duration { get; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-desktop-thumbnail.h", type_id = "gnome_desktop_thumbnail_factory_get_type ()")]
	public class DesktopThumbnailFactory : GLib.Object {
		[CCode (has_construct_function = false)]
		[Version (since = "2.2")]
		public DesktopThumbnailFactory (Gnome.DesktopThumbnailSize size);
		[Version (since = "2.2")]
		public bool can_thumbnail (string uri, string mime_type, long mtime);
		[Version (since = "2.2")]
		public void create_failed_thumbnail (string uri, long mtime);
		[Version (since = "2.2")]
		public Gdk.Pixbuf generate_thumbnail (string uri, string mime_type);
		[Version (since = "2.2")]
		public bool has_valid_failed_thumbnail (string uri, long mtime);
		[Version (since = "2.2")]
		public string lookup (string uri, long mtime);
		[Version (since = "2.2")]
		public void save_thumbnail (Gdk.Pixbuf thumbnail, string uri, long original_mtime);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-idle-monitor.h", type_id = "gnome_idle_monitor_get_type ()")]
	public class IdleMonitor : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public IdleMonitor ();
		public uint add_idle_watch (uint64 interval_msec, owned Gnome.IdleMonitorWatchFunc? callback);
		public uint add_user_active_watch (owned Gnome.IdleMonitorWatchFunc? callback);
		[CCode (has_construct_function = false)]
		[Version (deprecated = true, deprecated_since = "3.36")]
		public IdleMonitor.for_device (Gdk.Device device) throws GLib.Error;
		public uint64 get_idletime ();
		public void remove_watch (uint id);
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "3.36")]
		public Gdk.Device device { owned get; construct; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-pnp-ids.h", type_id = "gnome_pnp_ids_get_type ()")]
	public class PnpIds : GLib.Object {
		[CCode (has_construct_function = false)]
		public PnpIds ();
		public string get_pnp_id (string pnp_id);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr-config.h", type_id = "gnome_rr_config_get_type ()")]
	public class RRConfig : GLib.Object {
		[CCode (has_construct_function = false)]
		protected RRConfig ();
		public bool applicable (Gnome.RRScreen screen) throws GLib.Error;
		public bool apply (Gnome.RRScreen screen) throws GLib.Error;
		public bool apply_persistent (Gnome.RRScreen screen) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public RRConfig.current (Gnome.RRScreen screen) throws GLib.Error;
		public bool ensure_primary ();
		public bool equal (Gnome.RRConfig config2);
		public bool get_clone ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RROutputInfo[] get_outputs ();
		public bool load_current () throws GLib.Error;
		public bool match (Gnome.RRConfig config2);
		public void sanitize ();
		public void set_clone (bool clone);
		[NoAccessorMethod]
		public Gnome.RRScreen screen { construct; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_crtc_get_type ()")]
	[Compact]
	public class RRCrtc {
		public bool can_drive_output (Gnome.RROutput output);
		public unowned Gnome.RRMode get_current_mode ();
		public Gnome.RRRotation get_current_rotation ();
		public bool get_gamma (int size, out ushort red, out ushort green, out ushort blue);
		public uint32 get_id ();
		public void get_position (out int x, out int y);
		public Gnome.RRRotation get_rotations ();
		public bool set_gamma (int size, ushort red, ushort green, ushort blue);
		public bool supports_rotation (Gnome.RRRotation rotation);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_mode_get_type ()")]
	[Compact]
	public class RRMode {
		public int get_freq ();
		public double get_freq_f ();
		public uint get_height ();
		public uint32 get_id ();
		public bool get_is_interlaced ();
		public bool get_is_tiled ();
		public uint get_width ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_output_get_type ()")]
	[Compact]
	public class RROutput {
		public bool can_clone (Gnome.RROutput clone);
		public int get_backlight ();
		public unowned Gnome.RRCrtc get_crtc ();
		public unowned Gnome.RRMode get_current_mode ();
		public unowned string get_display_name ();
		public uint8 get_edid_data (size_t size);
		public uint32 get_id ();
		public void get_ids_from_edid (out string vendor, out string product, out string serial);
		public bool get_is_primary ();
		public bool get_is_underscanning ();
		public int get_min_backlight_step ();
		public unowned string get_name ();
		public void get_physical_size (out int width_mm, out int height_mm);
		public void get_position (out int x, out int y);
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RRCrtc[] get_possible_crtcs ();
		public unowned Gnome.RRMode get_preferred_mode ();
		public bool is_builtin_display ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RRMode[] list_modes ();
		public bool set_backlight (int value) throws GLib.Error;
		public bool set_color_transform (Gnome.RRCTM value) throws GLib.Error;
		public bool supports_color_transform ();
		public bool supports_mode (Gnome.RRMode mode);
		public bool supports_underscanning ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr-config.h", type_id = "gnome_rr_output_info_get_type ()")]
	public class RROutputInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		protected RROutputInfo ();
		public double get_aspect_ratio ();
		public unowned string get_display_name ();
		public void get_geometry (out int x, out int y, out int width, out int height);
		public unowned string get_name ();
		public int get_preferred_height ();
		public int get_preferred_width ();
		public bool get_primary ();
		public unowned string get_product ();
		public int get_refresh_rate ();
		public Gnome.RRRotation get_rotation ();
		public unowned string get_serial ();
		public bool get_underscanning ();
		public unowned string get_vendor ();
		public bool is_active ();
		public bool is_connected ();
		public bool is_primary_tile ();
		public void set_active (bool active);
		public void set_geometry (int x, int y, int width, int height);
		public void set_primary (bool primary);
		public void set_refresh_rate (int rate);
		public void set_rotation (Gnome.RRRotation rotation);
		public void set_underscanning (bool underscanning);
		public bool supports_rotation (Gnome.RRRotation rotation);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", type_id = "gnome_rr_screen_get_type ()")]
	public class RRScreen : GLib.Object, GLib.AsyncInitable, GLib.Initable {
		[CCode (cname = "gnome_rr_screen_new_async", has_construct_function = false)]
		public async RRScreen (Gdk.Screen screen) throws GLib.Error;
		public unowned Gnome.RRCrtc get_crtc_by_id (uint32 id);
		public bool get_dpms_mode (out Gnome.RRDpmsMode mode) throws GLib.Error;
		public unowned Gnome.RROutput get_output_by_id (uint32 id);
		public unowned Gnome.RROutput get_output_by_name (string name);
		public void get_ranges (out int min_width, out int max_width, out int min_height, out int max_height);
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RRMode[] list_clone_modes ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RRCrtc[] list_crtcs ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RRMode[] list_modes ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned Gnome.RROutput[] list_outputs ();
		public bool refresh () throws GLib.Error;
		public bool set_dpms_mode (Gnome.RRDpmsMode mode) throws GLib.Error;
		[CCode (cname = "gnome_rr_screen_new", has_construct_function = false)]
		public RRScreen.sync (Gdk.Screen screen) throws GLib.Error;
		[NoAccessorMethod]
		public Gnome.RRDpmsModeType dpms_mode { get; set; }
		[NoAccessorMethod]
		public Gdk.Screen gdk_screen { owned get; construct; }
		public virtual signal void changed ();
		public virtual signal void output_connected (void* output);
		public virtual signal void output_disconnected (void* output);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_wall_clock_get_type ()")]
	public class WallClock : GLib.Object {
		[CCode (has_construct_function = false)]
		public WallClock ();
		public unowned string get_clock ();
		public unowned GLib.TimeZone get_timezone ();
		public string string_for_datetime (GLib.DateTime now, GDesktop.ClockFormat clock_format, bool show_weekday, bool show_full_date, bool show_seconds);
		public string clock { get; }
		[NoAccessorMethod]
		public bool time_only { get; set; }
		public GLib.TimeZone timezone { get; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-xkb-info.h", type_id = "gnome_xkb_info_get_type ()")]
	public class XkbInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		public XkbInfo ();
		[Version (since = "3.8")]
		public unowned string description_for_group (string group_id);
		[Version (since = "3.6")]
		public unowned string description_for_option (string group_id, string id);
		[Version (since = "3.6")]
		public GLib.List<weak string> get_all_layouts ();
		[Version (since = "3.6")]
		public GLib.List<weak string> get_all_option_groups ();
		[Version (since = "3.18")]
		public GLib.List<weak string> get_languages_for_layout (string layout_id);
		[Version (since = "3.6")]
		public bool get_layout_info (string id, out unowned string? display_name, out unowned string? short_name, out unowned string? xkb_layout, out unowned string? xkb_variant);
		[Version (since = "3.8")]
		public GLib.List<weak string> get_layouts_for_country (string country_code);
		[Version (since = "3.8")]
		public GLib.List<weak string> get_layouts_for_language (string language_code);
		[Version (since = "3.6")]
		public GLib.List<weak string> get_options_for_group (string group_id);
		public signal void layouts_changed ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", has_type_id = false)]
	public struct RRCTM {
		[CCode (array_length = false)]
		public weak uint64 matrix[9];
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-desktop-thumbnail.h", cprefix = "GNOME_DESKTOP_THUMBNAIL_SIZE_", has_type_id = false)]
	public enum DesktopThumbnailSize {
		NORMAL,
		LARGE,
		XLARGE,
		XXLARGE
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", cprefix = "GNOME_RR_DPMS_", has_type_id = false)]
	public enum RRDpmsMode {
		ON,
		STANDBY,
		SUSPEND,
		OFF,
		UNKNOWN
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", cprefix = "GNOME_RR_DPMS_", type_id = "gnome_rr_dpms_mode_get_type ()")]
	public enum RRDpmsModeType {
		ON,
		STANDBY,
		SUSPEND,
		OFF,
		UNKNOWN
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", cprefix = "GNOME_RR_", has_type_id = false)]
	[Flags]
	public enum RRRotation {
		ROTATION_NEXT,
		ROTATION_0,
		ROTATION_90,
		ROTATION_180,
		ROTATION_270,
		REFLECT_X,
		REFLECT_Y
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", cprefix = "GNOME_RR_ERROR_", has_type_id = false)]
	public errordomain RRError {
		UNKNOWN,
		NO_RANDR_EXTENSION,
		RANDR_ERROR,
		BOUNDS_ERROR,
		CRTC_ASSIGNMENT,
		NO_MATCHING_CONFIG,
		NO_DPMS_EXTENSION;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-idle-monitor.h", instance_pos = 2.9)]
	public delegate void IdleMonitorWatchFunc (Gnome.IdleMonitor monitor, uint id);
	[CCode (cheader_filename = "libgnome-desktop/gnome-rr.h", cname = "GNOME_RR_CONNECTOR_TYPE_PANEL")]
	public const string RR_CONNECTOR_TYPE_PANEL;
	[CCode (cheader_filename = "libgnome-desktop/gnome-systemd.h")]
	public static async bool start_systemd_scope (string name, int32 pid, string? description, GLib.DBusConnection? connection, GLib.Cancellable? cancellable) throws GLib.Error;
}
