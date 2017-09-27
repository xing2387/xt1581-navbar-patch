.class public final Lcom/google/android/gms/internal/ny;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final RI:Ljava/util/regex/Pattern;

.field private static final RJ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ny;->RI:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ny;->RJ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static bs(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p0

    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/ny;->RJ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_f
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz v0, :cond_6b

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v0, :cond_34

    :goto_21
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_6c

    goto :goto_f

    :sswitch_2d
    const-string/jumbo v2, "\\\\b"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :cond_34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_21

    :sswitch_3a
    const-string/jumbo v2, "\\\\\\\""

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_41
    const-string/jumbo v2, "\\\\\\\\"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_48
    const-string/jumbo v2, "\\\\/"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_4f
    const-string/jumbo v2, "\\\\f"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_56
    const-string/jumbo v2, "\\\\n"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_5d
    const-string/jumbo v2, "\\\\r"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :sswitch_64
    const-string/jumbo v2, "\\\\t"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_f

    :cond_6b
    return-object p0

    :sswitch_data_6c
    .sparse-switch
        0x8 -> :sswitch_2d
        0x9 -> :sswitch_64
        0xa -> :sswitch_56
        0xc -> :sswitch_4f
        0xd -> :sswitch_5d
        0x22 -> :sswitch_3a
        0x2f -> :sswitch_48
        0x5c -> :sswitch_41
    .end sparse-switch
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_f

    :cond_6
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_4b

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_f
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-ne v0, v2, :cond_2c

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    return v4

    :cond_2c
    return v1

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    :try_start_39
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ny;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_44} :catch_49

    move-result v0

    if-nez v0, :cond_25

    return v1

    :cond_48
    return v1

    :catch_49
    move-exception v0

    return v1

    :cond_4b
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_a

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v0, v2, :cond_65

    move v0, v1

    :goto_5e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_66

    return v4

    :cond_65
    return v1

    :cond_66
    :try_start_66
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ny;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_71} :catch_78

    move-result v2

    if-eqz v2, :cond_77

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_77
    return v1

    :catch_78
    move-exception v0

    return v1
.end method
