/* gstreamer-rtp-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstRtp", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace RTCP {
		[CCode (cheader_filename = "gst/rtp/rtp.h", has_type_id = false)]
		[GIR (name = "RTCPBuffer")]
		public struct Buffer {
			public weak Gst.Buffer buffer;
			public bool add_packet (Gst.RTCP.Type type, Gst.RTCP.Packet packet);
			public bool get_first_packet (Gst.RTCP.Packet packet);
			public uint get_packet_count ();
			public static bool map (Gst.Buffer buffer, Gst.MapFlags flags, out Gst.RTCP.Buffer rtcp);
			public static Gst.Buffer @new (uint mtu);
			public static Gst.Buffer new_copy_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
			public static Gst.Buffer new_take_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] owned uint8[] data);
			public bool unmap ();
			public static bool validate (Gst.Buffer buffer);
			public static bool validate_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
			[Version (since = "1.6")]
			public static bool validate_data_reduced ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
			[Version (since = "1.6")]
			public static bool validate_reduced (Gst.Buffer buffer);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", has_type_id = false)]
		[GIR (name = "RTCPPacket")]
		public struct Packet {
			public weak Gst.RTCP.Buffer? rtcp;
			public uint offset;
			[Version (since = "1.10")]
			public bool add_profile_specific_ext ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
			public bool add_rb (uint32 ssrc, uint8 fractionlost, int32 packetslost, uint32 exthighestseq, uint32 jitter, uint32 lsr, uint32 dlsr);
			[Version (since = "1.10")]
			public uint8 app_get_data ();
			[Version (since = "1.10")]
			public uint16 app_get_data_length ();
			[Version (since = "1.10")]
			public unowned string app_get_name ();
			[Version (since = "1.10")]
			public uint32 app_get_ssrc ();
			[Version (since = "1.10")]
			public uint8 app_get_subtype ();
			[Version (since = "1.10")]
			public bool app_set_data_length (uint16 wordlen);
			[Version (since = "1.10")]
			public void app_set_name (string name);
			[Version (since = "1.10")]
			public void app_set_ssrc (uint32 ssrc);
			[Version (since = "1.10")]
			public void app_set_subtype (uint8 subtype);
			public bool bye_add_ssrc (uint32 ssrc);
			public bool bye_add_ssrcs ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint32[] ssrc);
			public uint32 bye_get_nth_ssrc (uint nth);
			public string bye_get_reason ();
			public uint8 bye_get_reason_len ();
			public uint bye_get_ssrc_count ();
			public bool bye_set_reason (string reason);
			[Version (since = "1.10")]
			public bool copy_profile_specific_ext ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] out uint8[] data);
			public uint8 fb_get_fci ();
			public uint16 fb_get_fci_length ();
			public uint32 fb_get_media_ssrc ();
			public uint32 fb_get_sender_ssrc ();
			public Gst.RTCP.FBType fb_get_type ();
			public bool fb_set_fci_length (uint16 wordlen);
			public void fb_set_media_ssrc (uint32 ssrc);
			public void fb_set_sender_ssrc (uint32 ssrc);
			public void fb_set_type (Gst.RTCP.FBType type);
			public uint8 get_count ();
			public uint16 get_length ();
			public bool get_padding ();
			[Version (since = "1.10")]
			public bool get_profile_specific_ext ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] out unowned uint8[] data);
			[Version (since = "1.10")]
			public uint16 get_profile_specific_ext_length ();
			public void get_rb (uint nth, out uint32 ssrc, out uint8 fractionlost, out int32 packetslost, out uint32 exthighestseq, out uint32 jitter, out uint32 lsr, out uint32 dlsr);
			public uint get_rb_count ();
			public Gst.RTCP.Type get_type ();
			public bool move_to_next ();
			public bool remove ();
			public uint32 rr_get_ssrc ();
			public void rr_set_ssrc (uint32 ssrc);
			public bool sdes_add_entry (Gst.RTCP.SDESType type, [CCode (array_length_cname = "len", array_length_pos = 1.5, array_length_type = "guint8")] uint8[] data);
			public bool sdes_add_item (uint32 ssrc);
			public bool sdes_copy_entry (out Gst.RTCP.SDESType type, [CCode (array_length_cname = "len", array_length_pos = 1.5, array_length_type = "guint8")] out uint8[] data);
			public bool sdes_first_entry ();
			public bool sdes_first_item ();
			public bool sdes_get_entry (out Gst.RTCP.SDESType type, [CCode (array_length_cname = "len", array_length_pos = 1.5, array_length_type = "guint8")] out unowned uint8[] data);
			public uint sdes_get_item_count ();
			public uint32 sdes_get_ssrc ();
			public bool sdes_next_entry ();
			public bool sdes_next_item ();
			public void set_rb (uint nth, uint32 ssrc, uint8 fractionlost, int32 packetslost, uint32 exthighestseq, uint32 jitter, uint32 lsr, uint32 dlsr);
			public void sr_get_sender_info (out uint32 ssrc, out uint64 ntptime, out uint32 rtptime, out uint32 packet_count, out uint32 octet_count);
			public void sr_set_sender_info (uint32 ssrc, uint64 ntptime, uint32 rtptime, uint32 packet_count, uint32 octet_count);
			[Version (since = "1.16")]
			public bool xr_first_rb ();
			[Version (since = "1.16")]
			public uint16 xr_get_block_length ();
			[Version (since = "1.16")]
			public Gst.RTCP.XRType xr_get_block_type ();
			[Version (since = "1.16")]
			public bool xr_get_dlrr_block (uint nth, out uint32 ssrc, out uint32 last_rr, out uint32 delay);
			[Version (since = "1.16")]
			public bool xr_get_prt_by_seq (uint16 seq, out uint32 receipt_time);
			[Version (since = "1.16")]
			public bool xr_get_prt_info (out uint32 ssrc, out uint8 thinning, out uint16 begin_seq, out uint16 end_seq);
			[Version (since = "1.16")]
			public bool xr_get_rle_info (out uint32 ssrc, out uint8 thinning, out uint16 begin_seq, out uint16 end_seq, out uint32 chunk_count);
			[Version (since = "1.16")]
			public bool xr_get_rle_nth_chunk (uint nth, out uint16 chunk);
			[Version (since = "1.16")]
			public bool xr_get_rrt (out uint64 timestamp);
			[Version (since = "1.16")]
			public uint32 xr_get_ssrc ();
			[Version (since = "1.16")]
			public bool xr_get_summary_info (out uint32 ssrc, out uint16 begin_seq, out uint16 end_seq);
			[Version (since = "1.16")]
			public bool xr_get_summary_jitter (out uint32 min_jitter, out uint32 max_jitter, out uint32 mean_jitter, out uint32 dev_jitter);
			[Version (since = "1.16")]
			public bool xr_get_summary_pkt (out uint32 lost_packets, out uint32 dup_packets);
			[Version (since = "1.16")]
			public bool xr_get_summary_ttl (out bool is_ipv4, out uint8 min_ttl, out uint8 max_ttl, out uint8 mean_ttl, out uint8 dev_ttl);
			[Version (since = "1.16")]
			public bool xr_get_voip_burst_metrics (out uint8 burst_density, out uint8 gap_density, out uint16 burst_duration, out uint16 gap_duration);
			[Version (since = "1.16")]
			public bool xr_get_voip_configuration_params (out uint8 gmin, out uint8 rx_config);
			[Version (since = "1.16")]
			public bool xr_get_voip_delay_metrics (out uint16 roundtrip_delay, out uint16 end_system_delay);
			[Version (since = "1.16")]
			public bool xr_get_voip_jitter_buffer_params (out uint16 jb_nominal, out uint16 jb_maximum, out uint16 jb_abs_max);
			[Version (since = "1.16")]
			public bool xr_get_voip_metrics_ssrc (out uint32 ssrc);
			[Version (since = "1.16")]
			public bool xr_get_voip_packet_metrics (out uint8 loss_rate, out uint8 discard_rate);
			[Version (since = "1.16")]
			public bool xr_get_voip_quality_metrics (out uint8 r_factor, out uint8 ext_r_factor, out uint8 mos_lq, out uint8 mos_cq);
			[Version (since = "1.16")]
			public bool xr_get_voip_signal_metrics (out uint8 signal_level, out uint8 noise_level, out uint8 rerl, out uint8 gmin);
			[Version (since = "1.16")]
			public bool xr_next_rb ();
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTCP_", type_id = "gst_rtcpfb_type_get_type ()")]
		[GIR (name = "RTCPFBType")]
		public enum FBType {
			FB_TYPE_INVALID,
			RTPFB_TYPE_NACK,
			RTPFB_TYPE_TMMBR,
			RTPFB_TYPE_TMMBN,
			RTPFB_TYPE_RTCP_SR_REQ,
			RTPFB_TYPE_TWCC,
			PSFB_TYPE_PLI,
			PSFB_TYPE_SLI,
			PSFB_TYPE_RPSI,
			PSFB_TYPE_AFB,
			PSFB_TYPE_FIR,
			PSFB_TYPE_TSTR,
			PSFB_TYPE_TSTN,
			PSFB_TYPE_VBCN
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTCP_SDES_", type_id = "gst_rtcpsdes_type_get_type ()")]
		[GIR (name = "RTCPSDESType")]
		public enum SDESType {
			INVALID,
			END,
			CNAME,
			NAME,
			EMAIL,
			PHONE,
			LOC,
			TOOL,
			NOTE,
			PRIV,
			[Version (since = "1.20")]
			H323_CADDR,
			[Version (since = "1.20")]
			APSI,
			[Version (since = "1.20")]
			RGRP,
			[Version (since = "1.20")]
			RTP_STREAM_ID,
			[Version (since = "1.20")]
			REPAIRED_RTP_STREAM_ID,
			[Version (since = "1.20")]
			CCID,
			[Version (since = "1.20")]
			MID;
			[CCode (cname = "gst_rtcp_sdes_name_to_type")]
			public static Gst.RTCP.SDESType from_string (string name);
			[CCode (cname = "gst_rtcp_sdes_type_to_name")]
			public unowned string to_string ();
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTCP_TYPE_", type_id = "gst_rtcp_type_get_type ()")]
		[GIR (name = "RTCPType")]
		public enum Type {
			INVALID,
			SR,
			RR,
			SDES,
			BYE,
			APP,
			RTPFB,
			PSFB,
			XR
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTCP_XR_TYPE_", type_id = "gst_rtcpxr_type_get_type ()")]
		[GIR (name = "RTCPXRType")]
		[Version (since = "1.16")]
		public enum XRType {
			INVALID,
			LRLE,
			DRLE,
			PRT,
			RRT,
			DLRR,
			SSUMM,
			VOIP_METRICS
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_MAX_BYE_SSRC_COUNT")]
		public const int MAX_BYE_SSRC_COUNT;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_MAX_RB_COUNT")]
		public const int MAX_RB_COUNT;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_MAX_SDES")]
		public const int MAX_SDES;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_MAX_SDES_ITEM_COUNT")]
		public const int MAX_SDES_ITEM_COUNT;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_REDUCED_SIZE_VALID_MASK")]
		public const int REDUCED_SIZE_VALID_MASK;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_VALID_MASK")]
		public const int VALID_MASK;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_VALID_VALUE")]
		public const int VALID_VALUE;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTCP_VERSION")]
		public const int VERSION;
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.map")]
		public static bool buffer_map (Gst.Buffer buffer, Gst.MapFlags flags, Gst.RTCP.Buffer rtcp);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.new")]
		public static Gst.Buffer buffer_new (uint mtu);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.new_copy_data")]
		public static Gst.Buffer buffer_new_copy_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.new_take_data")]
		public static Gst.Buffer buffer_new_take_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.validate")]
		public static bool buffer_validate (Gst.Buffer buffer);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.validate_data")]
		public static bool buffer_validate_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.validate_data_reduced", since = "1.6")]
		public static bool buffer_validate_data_reduced ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTCPBuffer.validate_reduced", since = "1.6")]
		public static bool buffer_validate_reduced (Gst.Buffer buffer);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static uint64 ntp_to_unix (uint64 ntptime);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static uint64 unix_to_ntp (uint64 unixtime);
	}
	namespace RTP {
		[CCode (cheader_filename = "gst/rtp/rtp.h", type_id = "gst_rtp_base_audio_payload_get_type ()")]
		[GIR (name = "RTPBaseAudioPayload")]
		public class BaseAudioPayload : Gst.RTP.BasePayload {
			public Gst.ClockTime base_ts;
			public int frame_duration;
			public int frame_size;
			public int sample_size;
			[CCode (has_construct_function = false)]
			protected BaseAudioPayload ();
			public Gst.FlowReturn flush (uint payload_len, Gst.ClockTime timestamp);
			public Gst.Base.Adapter get_adapter ();
			public Gst.FlowReturn push ([CCode (array_length_cname = "payload_len", array_length_pos = 1.5, array_length_type = "guint")] uint8[] data, Gst.ClockTime timestamp);
			public void set_frame_based ();
			public void set_frame_options (int frame_duration, int frame_size);
			public void set_sample_based ();
			public void set_sample_options (int sample_size);
			public void set_samplebits_options (int sample_size);
			[NoAccessorMethod]
			public bool buffer_list { get; set; }
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", type_id = "gst_rtp_base_depayload_get_type ()")]
		[GIR (name = "RTPBaseDepayload")]
		public abstract class BaseDepayload : Gst.Element {
			public uint clock_rate;
			public bool need_newsegment;
			public weak Gst.Segment segment;
			public weak Gst.Pad sinkpad;
			public weak Gst.Pad srcpad;
			[CCode (has_construct_function = false)]
			protected BaseDepayload ();
			[NoWrapper]
			public virtual bool handle_event (Gst.Event event);
			[Version (since = "1.16")]
			public bool is_source_info_enabled ();
			[NoWrapper]
			public virtual bool packet_lost (Gst.Event event);
			[NoWrapper]
			public virtual Gst.Buffer process (Gst.Buffer @in);
			[NoWrapper]
			public virtual Gst.Buffer process_rtp_packet (Gst.RTP.Buffer rtp_buffer);
			public Gst.FlowReturn push (Gst.Buffer out_buf);
			public Gst.FlowReturn push_list (Gst.BufferList out_list);
			[NoWrapper]
			public virtual bool set_caps (Gst.Caps caps);
			[Version (since = "1.16")]
			public void set_source_info_enabled (bool enable);
			[NoAccessorMethod]
			[Version (since = "1.20")]
			public bool auto_header_extension { get; set; }
			[NoAccessorMethod]
			[Version (since = "1.18")]
			public int max_reorder { get; set; }
			[NoAccessorMethod]
			[Version (since = "1.16")]
			public bool source_info { get; set; }
			[NoAccessorMethod]
			public Gst.Structure stats { owned get; }
			[Version (since = "1.20")]
			public signal void add_extension (owned Gst.RTP.HeaderExtension ext);
			[Version (since = "1.20")]
			public signal void clear_extensions ();
			[Version (since = "1.20")]
			public signal Gst.RTP.HeaderExtension request_extension (uint ext_id, string? ext_uri);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", type_id = "gst_rtp_base_payload_get_type ()")]
		[GIR (name = "RTPBasePayload")]
		public abstract class BasePayload : Gst.Element {
			[CCode (has_construct_function = false)]
			protected BasePayload ();
			[Version (since = "1.16")]
			public Gst.Buffer allocate_output_buffer (uint payload_len, uint8 pad_len, uint8 csrc_count);
			[NoWrapper]
			public virtual Gst.Caps get_caps (Gst.Pad pad, Gst.Caps filter);
			[Version (since = "1.16")]
			public uint get_source_count (Gst.Buffer buffer);
			[NoWrapper]
			public virtual Gst.FlowReturn handle_buffer (Gst.Buffer buffer);
			public bool is_filled (uint size, Gst.ClockTime duration);
			[Version (since = "1.16")]
			public bool is_source_info_enabled ();
			public Gst.FlowReturn push (Gst.Buffer buffer);
			public Gst.FlowReturn push_list (Gst.BufferList list);
			[NoWrapper]
			public virtual bool query (Gst.Pad pad, Gst.Query query);
			[NoWrapper]
			public virtual bool set_caps (Gst.Caps caps);
			public void set_options (string media, bool @dynamic, string encoding_name, uint32 clock_rate);
			[Version (since = "1.20")]
			public bool set_outcaps_structure (Gst.Structure? s);
			[Version (since = "1.16")]
			public void set_source_info_enabled (bool enable);
			[NoWrapper]
			public virtual bool sink_event (Gst.Event event);
			[NoWrapper]
			public virtual bool src_event (Gst.Event event);
			[NoAccessorMethod]
			[Version (since = "1.20")]
			public bool auto_header_extension { get; set; }
			[NoAccessorMethod]
			public int64 max_ptime { get; set; }
			[NoAccessorMethod]
			public int64 min_ptime { get; set; }
			[NoAccessorMethod]
			public uint mtu { get; set; }
			[NoAccessorMethod]
			[Version (since = "1.16")]
			public bool onvif_no_rate_control { get; set; }
			[NoAccessorMethod]
			public bool perfect_rtptime { get; set; }
			[NoAccessorMethod]
			public uint pt { get; set; }
			[NoAccessorMethod]
			public int64 ptime_multiple { get; set; }
			[NoAccessorMethod]
			[Version (since = "1.18")]
			public bool scale_rtptime { get; set; }
			[NoAccessorMethod]
			public uint seqnum { get; }
			[NoAccessorMethod]
			public int seqnum_offset { get; set; }
			[NoAccessorMethod]
			[Version (since = "1.16")]
			public bool source_info { get; set; }
			[NoAccessorMethod]
			public uint ssrc { get; set; }
			[NoAccessorMethod]
			public Gst.Structure stats { owned get; }
			[NoAccessorMethod]
			public uint timestamp { get; }
			[NoAccessorMethod]
			public uint timestamp_offset { get; set; }
			[Version (since = "1.20")]
			public signal void add_extension (owned Gst.RTP.HeaderExtension ext);
			[Version (since = "1.20")]
			public signal void clear_extensions ();
			[Version (since = "1.20")]
			public signal Gst.RTP.HeaderExtension request_extension (uint ext_id, string ext_uri);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", type_id = "gst_rtp_header_extension_get_type ()")]
		[GIR (name = "RTPHeaderExtension")]
		[Version (since = "1.20")]
		public abstract class HeaderExtension : Gst.Element {
			[CCode (has_construct_function = false)]
			protected HeaderExtension ();
			public static Gst.RTP.HeaderExtension? create_from_uri (string uri);
			public Gst.RTP.HeaderExtensionDirection get_direction ();
			public uint get_id ();
			public virtual size_t get_max_size (Gst.Buffer input_meta);
			public string get_sdp_caps_field_name ();
			public virtual Gst.RTP.HeaderExtensionFlags get_supported_flags ();
			public unowned string get_uri ();
			public virtual bool read (Gst.RTP.HeaderExtensionFlags read_flags, [CCode (array_length_cname = "size", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, Gst.Buffer buffer);
			[NoWrapper]
			public virtual bool set_attributes (Gst.RTP.HeaderExtensionDirection direction, string attributes);
			public bool set_attributes_from_caps (Gst.Caps caps);
			public virtual bool set_caps_from_attributes (Gst.Caps caps);
			public bool set_caps_from_attributes_helper (Gst.Caps caps, string attributes);
			public void set_direction (Gst.RTP.HeaderExtensionDirection direction);
			public void set_id (uint ext_id);
			public virtual bool set_non_rtp_sink_caps (Gst.Caps caps);
			[CCode (cname = "gst_rtp_header_extension_class_set_uri")]
			public class void set_uri (string uri);
			public void set_wants_update_non_rtp_src_caps (bool state);
			public virtual bool update_non_rtp_src_caps (Gst.Caps caps);
			public bool wants_update_non_rtp_src_caps ();
			public virtual ssize_t write (Gst.Buffer input_meta, Gst.RTP.HeaderExtensionFlags write_flags, Gst.Buffer output, [CCode (array_length_cname = "size", array_length_pos = 4.1, array_length_type = "gsize")] uint8[] data);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", has_type_id = false)]
		[GIR (name = "RTPBuffer")]
		public struct Buffer {
			public weak Gst.Buffer buffer;
			public uint state;
			[CCode (array_length = false)]
			public weak void* data[4];
			[CCode (array_length = false)]
			public weak size_t size[4];
			public bool add_extension_onebyte_header (uint8 id, [CCode (array_length_cname = "size", array_length_pos = 2.1, array_length_type = "guint")] uint8[] data);
			public bool add_extension_twobytes_header (uint8 appbits, uint8 id, [CCode (array_length_cname = "size", array_length_pos = 3.1, array_length_type = "guint")] uint8[] data);
			public static void allocate_data (Gst.Buffer buffer, uint payload_len, uint8 pad_len, uint8 csrc_count);
			public static uint calc_header_len (uint8 csrc_count);
			public static uint calc_packet_len (uint payload_len, uint8 pad_len, uint8 csrc_count);
			public static uint calc_payload_len (uint packet_len, uint8 pad_len, uint8 csrc_count);
			public static int compare_seqnum (uint16 seqnum1, uint16 seqnum2);
			public static uint32 default_clock_rate (uint8 payload_type);
			public static uint64 ext_timestamp (ref uint64 exttimestamp, uint32 timestamp);
			public uint32 get_csrc (uint8 idx);
			public uint8 get_csrc_count ();
			public bool get_extension ();
			[Version (since = "1.2")]
			public GLib.Bytes get_extension_bytes (out uint16 bits);
			public bool get_extension_data (out uint16 bits, [CCode (array_length = false)] out unowned uint8[] data, out uint wordlen);
			public bool get_extension_onebyte_header (uint8 id, uint nth, [CCode (array_length_cname = "size", array_length_pos = 3.1, array_length_type = "guint")] out unowned uint8[] data);
			[Version (since = "1.18")]
			public static bool get_extension_onebyte_header_from_bytes (GLib.Bytes bytes, uint16 bit_pattern, uint8 id, uint nth, [CCode (array_length_cname = "size", array_length_pos = 5.1, array_length_type = "guint")] out unowned uint8[] data);
			public bool get_extension_twobytes_header (out uint8 appbits, uint8 id, uint nth, [CCode (array_length_cname = "size", array_length_pos = 4.1, array_length_type = "guint")] out unowned uint8[] data);
			public uint get_header_len ();
			public bool get_marker ();
			public uint get_packet_len ();
			public bool get_padding ();
			[CCode (array_length = false)]
			public unowned uint8[] get_payload ();
			public Gst.Buffer get_payload_buffer ();
			[Version (since = "1.2")]
			public GLib.Bytes get_payload_bytes ();
			public uint get_payload_len ();
			public Gst.Buffer get_payload_subbuffer (uint offset, uint len);
			public uint8 get_payload_type ();
			public uint16 get_seq ();
			public uint32 get_ssrc ();
			public uint32 get_timestamp ();
			public uint8 get_version ();
			public static bool map (Gst.Buffer buffer, Gst.MapFlags flags, out Gst.RTP.Buffer rtp);
			public static Gst.Buffer new_allocate (uint payload_len, uint8 pad_len, uint8 csrc_count);
			public static Gst.Buffer new_allocate_len (uint packet_len, uint8 pad_len, uint8 csrc_count);
			public static Gst.Buffer new_copy_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] data);
			public static Gst.Buffer new_take_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "gsize")] owned uint8[] data);
			public void pad_to (uint len);
			[Version (since = "1.20")]
			public void remove_extension_data ();
			public void set_csrc (uint8 idx, uint32 csrc);
			public void set_extension (bool extension);
			public bool set_extension_data (uint16 bits, uint16 length);
			public void set_marker (bool marker);
			public void set_packet_len (uint len);
			public void set_padding (bool padding);
			public void set_payload_type (uint8 payload_type);
			public void set_seq (uint16 seq);
			public void set_ssrc (uint32 ssrc);
			public void set_timestamp (uint32 timestamp);
			public void set_version (uint8 version);
			public void unmap ();
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", has_type_id = false)]
		[GIR (name = "RTPPayloadInfo")]
		public struct PayloadInfo {
			public uint8 payload_type;
			public weak string media;
			public weak string encoding_name;
			public uint clock_rate;
			public weak string encoding_parameters;
			public uint bitrate;
			public static unowned Gst.RTP.PayloadInfo? for_name (string media, string encoding_name);
			public static unowned Gst.RTP.PayloadInfo? for_pt (uint8 payload_type);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", has_type_id = false)]
		[GIR (name = "RTPSourceMeta")]
		[Version (since = "1.16")]
		public struct SourceMeta {
			public Gst.Meta meta;
			public uint32 ssrc;
			public bool ssrc_valid;
			[CCode (array_length = false)]
			public weak uint32 csrc[15];
			public uint csrc_count;
			public bool append_csrc ([CCode (array_length_cname = "csrc_count", array_length_pos = 1.1, array_length_type = "guint", type = "const guint32*")] uint32[] csrc);
			public static unowned Gst.MetaInfo? get_info ();
			public uint get_source_count ();
			public bool set_ssrc (uint32? ssrc);
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_BUFFER_FLAG_", type_id = "gst_rtp_buffer_flags_get_type ()")]
		[Flags]
		[GIR (name = "RTPBufferFlags")]
		[Version (since = "1.10")]
		public enum BufferFlags {
			RETRANSMISSION,
			REDUNDANT,
			LAST
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_BUFFER_MAP_FLAG_", type_id = "gst_rtp_buffer_map_flags_get_type ()")]
		[Flags]
		[GIR (name = "RTPBufferMapFlags")]
		[Version (since = "1.6.1")]
		public enum BufferMapFlags {
			SKIP_PADDING,
			LAST
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_HEADER_EXTENSION_DIRECTION_", type_id = "gst_rtp_header_extension_direction_get_type ()")]
		[Flags]
		[GIR (name = "RTPHeaderExtensionDirection")]
		[Version (since = "1.20")]
		public enum HeaderExtensionDirection {
			INACTIVE,
			SENDONLY,
			RECVONLY,
			SENDRECV,
			INHERITED
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_HEADER_EXTENSION_", type_id = "gst_rtp_header_extension_flags_get_type ()")]
		[Flags]
		[GIR (name = "RTPHeaderExtensionFlags")]
		[Version (since = "1.20")]
		public enum HeaderExtensionFlags {
			ONE_BYTE,
			TWO_BYTE
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_PAYLOAD_", type_id = "gst_rtp_payload_get_type ()")]
		[GIR (name = "RTPPayload")]
		public enum Payload {
			PCMU,
			@1016,
			G721,
			GSM,
			G723,
			DVI4_8000,
			DVI4_16000,
			LPC,
			PCMA,
			G722,
			L16_STEREO,
			L16_MONO,
			QCELP,
			CN,
			MPA,
			G728,
			DVI4_11025,
			DVI4_22050,
			G729,
			CELLB,
			JPEG,
			NV,
			H261,
			MPV,
			MP2T,
			H263;
			public const string @1016_STRING;
			public const string CELLB_STRING;
			public const string CN_STRING;
			public const string DVI4_11025_STRING;
			public const string DVI4_16000_STRING;
			public const string DVI4_22050_STRING;
			public const string DVI4_8000_STRING;
			public const string DYNAMIC_STRING;
			public const string G721_STRING;
			public const string G722_STRING;
			public const int G723_53;
			public const string G723_53_STRING;
			public const int G723_63;
			public const string G723_63_STRING;
			public const string G723_STRING;
			public const string G728_STRING;
			public const string G729_STRING;
			public const string GSM_STRING;
			public const string H261_STRING;
			public const string H263_STRING;
			public const string JPEG_STRING;
			public const string L16_MONO_STRING;
			public const string L16_STEREO_STRING;
			public const string LPC_STRING;
			public const string MP2T_STRING;
			public const string MPA_STRING;
			public const string MPV_STRING;
			public const string NV_STRING;
			public const string PCMA_STRING;
			public const string PCMU_STRING;
			public const string QCELP_STRING;
			public const int TS41;
			public const string TS41_STRING;
			public const int TS48;
			public const string TS48_STRING;
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cprefix = "GST_RTP_PROFILE_", type_id = "gst_rtp_profile_get_type ()")]
		[GIR (name = "RTPProfile")]
		[Version (since = "1.6")]
		public enum Profile {
			UNKNOWN,
			AVP,
			SAVP,
			AVPF,
			SAVPF
		}
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_BASE")]
		public const string HDREXT_BASE;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_ELEMENT_CLASS")]
		[Version (since = "1.20")]
		public const string HDREXT_ELEMENT_CLASS;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_NTP_56")]
		public const string HDREXT_NTP_56;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_NTP_56_SIZE")]
		public const int HDREXT_NTP_56_SIZE;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_NTP_64")]
		public const string HDREXT_NTP_64;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HDREXT_NTP_64_SIZE")]
		public const int HDREXT_NTP_64_SIZE;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_HEADER_EXTENSION_URI_METADATA_KEY")]
		[Version (since = "1.20")]
		public const string HEADER_EXTENSION_URI_METADATA_KEY;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_SOURCE_META_MAX_CSRC_COUNT")]
		public const int SOURCE_META_MAX_CSRC_COUNT;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "GST_RTP_VERSION")]
		public const int VERSION;
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "gst_buffer_add_rtp_source_meta")]
		[Version (since = "1.16")]
		public static unowned Gst.RTP.SourceMeta? buffer_add_rtp_source_meta (Gst.Buffer buffer, uint32? ssrc, uint32? csrc, uint csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.allocate_data")]
		public static void buffer_allocate_data (Gst.Buffer buffer, uint payload_len, uint8 pad_len, uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.calc_header_len")]
		public static uint buffer_calc_header_len (uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.calc_packet_len")]
		public static uint buffer_calc_packet_len (uint payload_len, uint8 pad_len, uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.calc_payload_len")]
		public static uint buffer_calc_payload_len (uint packet_len, uint8 pad_len, uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.compare_seqnum")]
		public static int buffer_compare_seqnum (uint16 seqnum1, uint16 seqnum2);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.default_clock_rate")]
		public static uint32 buffer_default_clock_rate (uint8 payload_type);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.ext_timestamp")]
		public static uint64 buffer_ext_timestamp (ref uint64 exttimestamp, uint32 timestamp);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.get_extension_onebyte_header_from_bytes", since = "1.18")]
		public static bool buffer_get_extension_onebyte_header_from_bytes (GLib.Bytes bytes, uint16 bit_pattern, uint8 id, uint nth, [CCode (array_length_cname = "size", array_length_pos = 5.1, array_length_type = "guint")] out unowned uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h", cname = "gst_buffer_get_rtp_source_meta")]
		[Version (since = "1.16")]
		public static unowned Gst.RTP.SourceMeta? buffer_get_rtp_source_meta (Gst.Buffer buffer);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.map")]
		public static bool buffer_map (Gst.Buffer buffer, Gst.MapFlags flags, out Gst.RTP.Buffer rtp);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.new_allocate")]
		public static Gst.Buffer buffer_new_allocate (uint payload_len, uint8 pad_len, uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.new_allocate_len")]
		public static Gst.Buffer buffer_new_allocate_len (uint packet_len, uint8 pad_len, uint8 csrc_count);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.new_copy_data")]
		public static Gst.Buffer buffer_new_copy_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPBuffer.new_take_data")]
		public static Gst.Buffer buffer_new_take_data ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "gsize")] owned uint8[] data);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (since = "1.20")]
		public static GLib.List<Gst.ElementFactory> get_header_extension_list ();
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static bool hdrext_get_ntp_56 ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "guint")] uint8[] data, out uint64 ntptime);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static bool hdrext_get_ntp_64 ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "guint")] uint8[] data, out uint64 ntptime);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static bool hdrext_set_ntp_56 (void* data, uint size, uint64 ntptime);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static bool hdrext_set_ntp_64 (void* data, uint size, uint64 ntptime);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPPayloadInfo.for_name")]
		public static unowned Gst.RTP.PayloadInfo? payload_info_for_name (string media, string encoding_name);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPPayloadInfo.for_pt")]
		public static unowned Gst.RTP.PayloadInfo? payload_info_for_pt (uint8 payload_type);
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		public static GLib.Type source_meta_api_get_type ();
		[CCode (cheader_filename = "gst/rtp/rtp.h")]
		[Version (replacement = "RTPSourceMeta.get_info")]
		public static unowned Gst.MetaInfo? source_meta_get_info ();
	}
}
