.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .registers 15
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 378
    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    .line 269
    iput v8, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 379
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p2, v8, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    .line 380
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 381
    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 385
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Landroid/net/apf/ApfFilter$Ra;->getUint16(Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_57

    .line 386
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v3

    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-eq v3, v4, :cond_60

    .line 388
    :cond_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Not an ICMP6 router advertisement"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    :cond_60
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0x36

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v3

    const/16 v4, 0x86

    if-ne v3, v4, :cond_57

    .line 394
    const/16 v3, 0x38

    .line 393
    invoke-direct {p0, v8, v3, v10}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    .line 399
    .local v0, "lastNonLifetimeStart":I
    const/16 v3, 0x3c

    .line 398
    invoke-direct {p0, v0, v3, v10}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    .line 403
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    :goto_83
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_108

    .line 405
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 406
    .local v2, "optionType":I
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v1, v3, 0x8

    .line 407
    .local v1, "optionLength":I
    sparse-switch v2, :sswitch_data_112

    .line 436
    :goto_ae
    if-gtz v1, :cond_fa

    .line 437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 438
    const-string/jumbo v4, "Invalid option length opt=%d len=%d"

    .line 437
    new-array v5, v10, [Ljava/lang/Object;

    .line 438
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 437
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :sswitch_cc
    invoke-direct {p0, v0, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    .line 415
    const/16 v3, 0x8

    .line 414
    invoke-direct {p0, v0, v3, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    .line 417
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 422
    :sswitch_e6
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :sswitch_f5
    invoke-direct {p0, v0, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    goto :goto_ae

    .line 440
    :cond_fa
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_83

    .line 443
    .end local v1    # "optionLength":I
    .end local v2    # "optionType":I
    :cond_108
    invoke-direct {p0, v0, v8, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    .line 444
    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 378
    return-void

    .line 407
    :sswitch_data_112
    .sparse-switch
        0x3 -> :sswitch_cc
        0x18 -> :sswitch_f5
        0x19 -> :sswitch_e6
        0x1f -> :sswitch_f5
    .end sparse-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .registers 9
    .param p1, "pos"    # I

    .prologue
    .line 281
    :try_start_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 284
    .local v2, "array":[B
    if-ltz p1, :cond_d

    add-int/lit8 v5, p1, 0x10

    array-length v6, v2

    if-le v5, v6, :cond_11

    .line 285
    :cond_d
    const-string/jumbo v5, "???"

    return-object v5

    .line 284
    :cond_11
    add-int/lit8 v5, p1, 0x10

    if-lt v5, p1, :cond_d

    .line 287
    add-int/lit8 v5, p1, 0x10

    invoke-static {v2, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 288
    .local v1, "addressBytes":[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 289
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_24} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_24} :catch_26
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v5

    return-object v5

    .line 293
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addressBytes":[B
    .end local v2    # "array":[B
    :catch_26
    move-exception v3

    .line 295
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "???"

    return-object v5

    .line 290
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v4

    .line 292
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "???"

    return-object v5
.end method

.method private addNonLifetime(III)I
    .registers 8
    .param p1, "lastNonLifetimeStart"    # I
    .param p2, "lifetimeOffset"    # I
    .param p3, "lifetimeLength"    # I

    .prologue
    .line 368
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    .line 369
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 370
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 369
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int v0, p2, p3

    return v0
.end method

.method private getUint16(Ljava/nio/ByteBuffer;I)J
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I

    .prologue
    .line 314
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter$Ra;->uint16(S)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .registers 13
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 318
    add-int/lit8 v6, p2, 0x10

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "prefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v0

    .line 320
    .local v0, "length":I
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    .line 321
    .local v4, "valid":J
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v2, v6

    .line 322
    .local v2, "preferred":J
    const-string/jumbo v6, "%s/%d %ds/%ds "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .registers 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 326
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v5

    mul-int/lit8 v3, v5, 0x8

    .line 327
    .local v3, "optLen":I
    const/16 v5, 0x18

    if-ge v3, v5, :cond_13

    return-void

    .line 328
    :cond_13
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint32(I)J

    move-result-wide v0

    .line 329
    .local v0, "lifetime":J
    add-int/lit8 v5, v3, -0x8

    div-int/lit8 v2, v5, 0x10

    .line 330
    .local v2, "numServers":I
    const-string/jumbo v5, "DNS "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const/4 v4, 0x0

    .local v4, "server":I
    :goto_35
    if-ge v4, v2, :cond_4d

    .line 332
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v6, p2, 0x8

    mul-int/lit8 v7, v4, 0x10

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 325
    :cond_4d
    return-void
.end method

.method private uint16(S)I
    .registers 3
    .param p1, "s"    # S

    .prologue
    .line 306
    const v0, 0xffff

    and-int/2addr v0, p1

    return v0
.end method

.method private uint32(I)J
    .registers 6
    .param p1, "s"    # I

    .prologue
    .line 310
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private uint8(B)I
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 302
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method currentLifetime()J
    .registers 7

    .prologue
    .line 490
    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .registers 14
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ra"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap1(Landroid/net/apf/ApfFilter;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "nextFilterLabel":Ljava/lang/String;
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xe

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 506
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {p1, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 507
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v8

    const-wide/16 v10, 0x6

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 509
    .local v0, "filterLifetime":I
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xf

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 510
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 511
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_ef

    .line 513
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 518
    .local v5, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8c

    .line 519
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v8, v7}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 520
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    .line 521
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 522
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v11

    .line 521
    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 520
    invoke-virtual {p1, v8, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 526
    :cond_8c
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b6

    .line 527
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 528
    .local v4, "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v6, v8, v7

    .line 530
    .local v6, "offset":I
    const/16 v7, 0x38

    if-ne v6, v7, :cond_b9

    .line 511
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 533
    .restart local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "offset":I
    :cond_b9
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v2, v7, v6

    .line 534
    .local v2, "length":I
    packed-switch v2, :pswitch_data_fa

    .line 537
    :pswitch_c6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bogus lifetime size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 535
    :pswitch_e0
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 539
    :goto_e5
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_b6

    .line 536
    :pswitch_e9
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    goto :goto_e5

    .line 542
    .end local v2    # "length":I
    .end local v4    # "nextNonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "offset":I
    :cond_ef
    const-string/jumbo v7, "__DROP__"

    invoke-virtual {p1, v7}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 543
    invoke-virtual {p1, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 544
    int-to-long v8, v0

    return-wide v8

    .line 534
    :pswitch_data_fa
    .packed-switch 0x2
        :pswitch_e9
        :pswitch_c6
        :pswitch_e0
    .end packed-switch
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .registers 5

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method matches([BI)Z
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 449
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq p2, v4, :cond_a

    return v6

    .line 450
    :cond_a
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 451
    .local v3, "referencePacket":[B
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nonLifetime$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 452
    .local v1, "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    :goto_2a
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_16

    .line 453
    aget-byte v4, p1, v0

    aget-byte v5, v3, v0

    if-eq v4, v5, :cond_44

    return v6

    .line 452
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 456
    .end local v0    # "i":I
    .end local v1    # "nonLifetime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_47
    const/4 v4, 0x1

    return v4
.end method

.method minLifetime([BI)J
    .registers 15
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    const-wide/16 v10, 0x1

    .line 462
    const-wide v4, 0x7fffffffffffffffL

    .line 464
    .local v4, "minLifetime":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 465
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_86

    .line 466
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v3, v9, v8

    .line 469
    .local v3, "offset":I
    const/16 v8, 0x38

    if-ne v3, v8, :cond_3f

    .line 465
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 473
    :cond_3f
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v2, v8, v3

    .line 475
    .local v2, "lifetimeLength":I
    packed-switch v2, :pswitch_data_88

    .line 478
    :pswitch_56
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bogus lifetime size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 476
    :pswitch_70
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    int-to-long v6, v8

    .line 481
    .local v6, "val":J
    :goto_75
    mul-int/lit8 v8, v2, 0x8

    shl-long v8, v10, v8

    sub-long/2addr v8, v10

    and-long/2addr v6, v8

    .line 482
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_3c

    .line 477
    .end local v6    # "val":J
    :pswitch_80
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v6, v8

    .restart local v6    # "val":J
    goto :goto_75

    .line 484
    .end local v2    # "lifetimeLength":I
    .end local v3    # "offset":I
    .end local v6    # "val":J
    :cond_86
    return-wide v4

    .line 475
    nop

    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_70
        :pswitch_56
        :pswitch_80
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 338
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "RA %s -> %s %ds "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 340
    const/16 v6, 0x16

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 341
    const/16 v6, 0x26

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 342
    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint16(S)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 339
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 344
    .local v1, "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V
    :try_end_50
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_50} :catch_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_3d

    .line 350
    .end local v1    # "i":I
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_51
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "<Malformed RA>"

    return-object v4

    .line 346
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_56
    :try_start_56
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    .restart local v1    # "i":I
    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    goto :goto_5c

    .line 349
    .end local v1    # "i":I
    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_73
    .catch Ljava/nio/BufferUnderflowException; {:try_start_56 .. :try_end_73} :catch_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_73} :catch_51

    move-result-object v4

    return-object v4
.end method
