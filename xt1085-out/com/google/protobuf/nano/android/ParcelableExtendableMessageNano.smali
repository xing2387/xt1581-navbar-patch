.class public abstract Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 47
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    .line 51
    return-void
.end method
