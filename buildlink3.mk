# $NetBSD$

BUILDLINK_TREE+=	libhighlight

.if !defined(LIBHIGHLIGHT_BUILDLINK3_MK)
LIBHIGHLIGHT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libhighlight+=	libhighlight>=3.18
BUILDLINK_PKGSRCDIR.libhighlight?=	../../textproc/libhighlight
.endif	# LIBHIGHLIGHT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libhighlight
