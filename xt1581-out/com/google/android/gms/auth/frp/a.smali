.class public interface abstract Lcom/google/android/gms/auth/frp/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/frp/a$a;
    }
.end annotation


# virtual methods
.method public abstract isChallengeRequired()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isChallengeSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/b;)Lcom/google/android/gms/auth/frp/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
