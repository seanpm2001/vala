[CCode (cprefix = "Wnck", lower_case_cprefix = "wnck_")]
namespace Wnck {
	[CCode (cprefix = "WNCK_CLIENT_TYPE_", cheader_filename = "libwnck/libwnck.h")]
	public enum ClientType {
		APPLICATION,
		PAGER,
	}
	[CCode (cprefix = "WNCK_MOTION_", cheader_filename = "libwnck/libwnck.h")]
	public enum MotionDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT,
	}
	[CCode (cprefix = "WNCK_PAGER_DISPLAY_", cheader_filename = "libwnck/libwnck.h")]
	public enum PagerDisplayMode {
		NAME,
		CONTENT,
	}
	[CCode (cprefix = "WNCK_TASKLIST_", cheader_filename = "libwnck/libwnck.h")]
	public enum TasklistGroupingType {
		NEVER_GROUP,
		AUTO_GROUP,
		ALWAYS_GROUP,
	}
	[CCode (cprefix = "WNCK_WINDOW_ACTION_", cheader_filename = "libwnck/libwnck.h")]
	public enum WindowActions {
		MOVE,
		RESIZE,
		SHADE,
		STICK,
		MAXIMIZE_HORIZONTALLY,
		MAXIMIZE_VERTICALLY,
		CHANGE_WORKSPACE,
		CLOSE,
		UNMAXIMIZE_HORIZONTALLY,
		UNMAXIMIZE_VERTICALLY,
		UNSHADE,
		UNSTICK,
		MINIMIZE,
		UNMINIMIZE,
		MAXIMIZE,
		UNMAXIMIZE,
		FULLSCREEN,
		ABOVE,
		BELOW,
	}
	[CCode (cprefix = "WNCK_WINDOW_GRAVITY_", cheader_filename = "libwnck/libwnck.h")]
	public enum WindowGravity {
		CURRENT,
		NORTHWEST,
		NORTH,
		NORTHEAST,
		WEST,
		CENTER,
		EAST,
		SOUTHWEST,
		SOUTH,
		SOUTHEAST,
		STATIC,
	}
	[CCode (cprefix = "WNCK_WINDOW_CHANGE_", cheader_filename = "libwnck/libwnck.h")]
	public enum WindowMoveResizeMask {
		X,
		Y,
		WIDTH,
		HEIGHT,
	}
	[CCode (cprefix = "WNCK_WINDOW_STATE_", cheader_filename = "libwnck/libwnck.h")]
	public enum WindowState {
		MINIMIZED,
		MAXIMIZED_HORIZONTALLY,
		MAXIMIZED_VERTICALLY,
		SHADED,
		SKIP_PAGER,
		SKIP_TASKLIST,
		STICKY,
		HIDDEN,
		FULLSCREEN,
		DEMANDS_ATTENTION,
		URGENT,
		ABOVE,
		BELOW,
	}
	[CCode (cprefix = "WNCK_WINDOW_", cheader_filename = "libwnck/libwnck.h")]
	public enum WindowType {
		NORMAL,
		DESKTOP,
		DOCK,
		DIALOG,
		TOOLBAR,
		MENU,
		UTILITY,
		SPLASHSCREEN,
	}
	[CCode (cprefix = "WNCK_LAYOUT_CORNER_", cheader_filename = "libwnck/libwnck.h")]
	public enum _WnckLayoutCorner {
		TOPLEFT,
		TOPRIGHT,
		BOTTOMRIGHT,
		BOTTOMLEFT,
	}
	[CCode (cprefix = "WNCK_LAYOUT_ORIENTATION_", cheader_filename = "libwnck/libwnck.h")]
	public enum _WnckLayoutOrientation {
		HORIZONTAL,
		VERTICAL,
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class PagerAccessible : Gtk.Accessible, Atk.Selection {
		public static GLib.Type get_type ();
		public PagerAccessible (Gtk.Widget widget);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Application : GLib.Object {
		public static weak Wnck.Application get (ulong xwindow);
		public weak Gdk.Pixbuf get_icon ();
		public bool get_icon_is_fallback ();
		public weak string get_icon_name ();
		public weak Gdk.Pixbuf get_mini_icon ();
		public int get_n_windows ();
		public weak string get_name ();
		public int get_pid ();
		public weak string get_startup_id ();
		public static GLib.Type get_type ();
		public weak GLib.List get_windows ();
		public ulong get_xid ();
		public signal void name_changed ();
		public signal void icon_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class ClassGroup : GLib.Object {
		public static weak Wnck.ClassGroup get (string res_class);
		public weak Gdk.Pixbuf get_icon ();
		public weak Gdk.Pixbuf get_mini_icon ();
		public weak string get_name ();
		public weak string get_res_class ();
		public static GLib.Type get_type ();
		public weak GLib.List get_windows ();
		public signal void name_changed ();
		public signal void icon_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Pager : Gtk.Container {
		public static GLib.Type get_type ();
		public Pager (Wnck.Screen screen);
		public void set_display_mode (Wnck.PagerDisplayMode mode);
		public bool set_n_rows (int n_rows);
		public bool set_orientation (Gtk.Orientation orientation);
		public void set_shadow_type (Gtk.ShadowType shadow_type);
		public void set_show_all (bool show_all_workspaces);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class pagerAccessibleFactory : GLib.Object {
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Screen : GLib.Object {
		public void change_workspace_count (int count);
		public void force_update ();
		public static weak Wnck.Screen get (int index);
		public weak Wnck.Window get_active_window ();
		public weak Wnck.Workspace get_active_workspace ();
		public ulong get_background_pixmap ();
		public static weak Wnck.Screen get_default ();
		public static weak Wnck.Screen get_for_root (ulong root_window_id);
		public int get_height ();
		public int get_number ();
		public weak Wnck.Window get_previously_active_window ();
		public bool get_showing_desktop ();
		public static GLib.Type get_type ();
		public int get_width ();
		public weak string get_window_manager_name ();
		public weak GLib.List get_windows ();
		public weak GLib.List get_windows_stacked ();
		public weak Wnck.Workspace get_workspace (int workspace);
		public int get_workspace_count ();
		public weak GLib.List get_workspaces ();
		public void move_viewport (int x, int y);
		public bool net_wm_supports (string atom);
		public void release_workspace_layout (int current_token);
		public void toggle_showing_desktop (bool show);
		public int try_set_workspace_layout (int current_token, int rows, int columns);
		public signal void active_window_changed (Wnck.Window previous_window);
		public signal void active_workspace_changed (Wnck.Workspace previous_workspace);
		public signal void window_stacking_changed ();
		public signal void window_opened (Wnck.Window window);
		public signal void window_closed (Wnck.Window window);
		public signal void workspace_created (Wnck.Workspace space);
		public signal void workspace_destroyed (Wnck.Workspace space);
		public signal void application_opened (Wnck.Application app);
		public signal void application_closed (Wnck.Application app);
		public signal void class_group_opened (Wnck.ClassGroup class_group);
		public signal void class_group_closed (Wnck.ClassGroup class_group);
		public signal void background_changed ();
		public signal void showing_desktop_changed ();
		public signal void viewports_changed ();
		public signal void window_manager_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Selector : Gtk.MenuBar {
		public static GLib.Type get_type ();
		public Selector ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Tasklist : Gtk.Container {
		[NoArrayLength]
		public weak int[] get_size_hint_list (int n_elements);
		public static GLib.Type get_type ();
		public Tasklist (Wnck.Screen screen);
		public void set_button_relief (Gtk.ReliefStyle relief);
		public void set_grouping (Wnck.TasklistGroupingType grouping);
		public void set_grouping_limit (int limit);
		public void set_icon_loader (Wnck.LoadIconFunction load_icon_func, pointer data, GLib.DestroyNotify free_data_func);
		public void set_include_all_workspaces (bool include_all_workspaces);
		public void set_switch_workspace_on_unminimize (bool switch_workspace_on_unminimize);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Window : GLib.Object {
		public void activate (uint timestamp);
		public void activate_transient (uint timestamp);
		public void close (uint timestamp);
		public static weak Wnck.Window get (ulong xwindow);
		public Wnck.WindowActions get_actions ();
		public weak Wnck.Application get_application ();
		public weak Wnck.ClassGroup get_class_group ();
		public void get_client_window_geometry (int xp, int yp, int widthp, int heightp);
		public void get_geometry (int xp, int yp, int widthp, int heightp);
		public ulong get_group_leader ();
		public weak Gdk.Pixbuf get_icon ();
		public bool get_icon_is_fallback ();
		public weak string get_icon_name ();
		public weak Gdk.Pixbuf get_mini_icon ();
		public weak string get_name ();
		public int get_pid ();
		public weak Wnck.Screen get_screen ();
		public weak string get_session_id ();
		public weak string get_session_id_utf8 ();
		public int get_sort_order ();
		public Wnck.WindowState get_state ();
		public weak Wnck.Window get_transient ();
		public static GLib.Type get_type ();
		public Wnck.WindowType get_window_type ();
		public weak Wnck.Workspace get_workspace ();
		public ulong get_xid ();
		public bool has_icon_name ();
		public bool has_name ();
		public bool is_above ();
		public bool is_active ();
		public bool is_below ();
		public bool is_fullscreen ();
		public bool is_in_viewport (Wnck.Workspace workspace);
		public bool is_maximized ();
		public bool is_maximized_horizontally ();
		public bool is_maximized_vertically ();
		public bool is_minimized ();
		public bool is_most_recently_activated ();
		public bool is_on_workspace (Wnck.Workspace workspace);
		public bool is_pinned ();
		public bool is_shaded ();
		public bool is_skip_pager ();
		public bool is_skip_tasklist ();
		public bool is_sticky ();
		public bool is_visible_on_workspace (Wnck.Workspace workspace);
		public void keyboard_move ();
		public void keyboard_size ();
		public void make_above ();
		public void make_below ();
		public void maximize ();
		public void maximize_horizontally ();
		public void maximize_vertically ();
		public void minimize ();
		public void move_to_workspace (Wnck.Workspace space);
		public bool needs_attention ();
		public bool or_transient_needs_attention ();
		public void pin ();
		public void set_fullscreen (bool fullscreen);
		public void set_geometry (Wnck.WindowGravity gravity, Wnck.WindowMoveResizeMask geometry_mask, int x, int y, int width, int height);
		public void set_icon_geometry (int x, int y, int width, int height);
		public void set_skip_pager (bool skip);
		public void set_skip_tasklist (bool skip);
		public void set_sort_order (int order);
		public void set_window_type (Wnck.WindowType wintype);
		public void shade ();
		public void stick ();
		public bool transient_is_most_recently_activated ();
		public void unmake_above ();
		public void unmake_below ();
		public void unmaximize ();
		public void unmaximize_horizontally ();
		public void unmaximize_vertically ();
		public void unminimize (uint timestamp);
		public void unpin ();
		public void unshade ();
		public void unstick ();
		public signal void name_changed ();
		public signal void state_changed (Wnck.WindowState changed_mask, Wnck.WindowState new_state);
		public signal void workspace_changed ();
		public signal void icon_changed ();
		public signal void actions_changed (Wnck.WindowActions changed_mask, Wnck.WindowActions new_actions);
		public signal void geometry_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class Workspace : GLib.Object {
		public void activate (uint timestamp);
		public void change_name (string name);
		public int get_height ();
		public int get_layout_column ();
		public int get_layout_row ();
		public weak string get_name ();
		public weak Wnck.Workspace get_neighbor (Wnck.MotionDirection direction);
		public int get_number ();
		public weak Wnck.Screen get_screen ();
		public static GLib.Type get_type ();
		public int get_viewport_x ();
		public int get_viewport_y ();
		public int get_width ();
		public bool is_virtual ();
		public signal void name_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class WorkspaceAccessibleFactory : Atk.ObjectFactory {
		public static GLib.Type get_type ();
		public WorkspaceAccessibleFactory ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public class WorkspaceAccessible : Atk.GObjectAccessible, Atk.Component {
		public static GLib.Type get_type ();
		public WorkspaceAccessible (GLib.Object obj);
	}
	[ReferenceType]
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public struct IconCache {
	}
	[ReferenceType]
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public struct PagerAccessibleFactory {
		public weak Atk.ObjectFactory parent;
		public static GLib.Type get_type ();
		public PagerAccessibleFactory ();
	}
	[ReferenceType]
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	public struct ResourceUsage {
		public ulong total_bytes_estimate;
		public ulong pixmap_bytes;
		public uint n_pixmaps;
		public uint n_windows;
		public uint n_gcs;
		public uint n_pictures;
		public uint n_glyphsets;
		public uint n_fonts;
		public uint n_colormap_entries;
		public uint n_passive_grabs;
		public uint n_cursors;
		public uint n_other;
	}
	public static delegate weak Gdk.Pixbuf LoadIconFunction (string icon_name, int size, uint flags, pointer data);
	public const string STOCK_DELETE;
	public const string STOCK_MAXIMIZE;
	public const string STOCK_MINIMIZE;
	public static weak Gtk.Widget create_window_action_menu (Wnck.Window window);
	public static void pid_read_resource_usage (Gdk.Display gdk_display, ulong pid, Wnck.ResourceUsage usage);
	public static void set_client_type (Wnck.ClientType ewmh_sourceindication_client_type);
	public static void xid_read_resource_usage (Gdk.Display gdk_display, ulong xid, Wnck.ResourceUsage usage);
}
