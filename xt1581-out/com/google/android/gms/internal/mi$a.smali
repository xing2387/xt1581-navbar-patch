.class final Lcom/google/android/gms/internal/mi$a;
.super Landroid/graphics/drawable/Drawable;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mi$a$a;
    }
.end annotation


# static fields
.field private static final Pl:Lcom/google/android/gms/internal/mi$a;

.field private static final Pm:Lcom/google/android/gms/internal/mi$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/mi$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mi$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mi$a;->Pl:Lcom/google/android/gms/internal/mi$a;

    new-instance v0, Lcom/google/android/gms/internal/mi$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mi$a$a;-><init>(Lcom/google/android/gms/internal/mi$1;)V

    sput-object v0, Lcom/google/android/gms/internal/mi$a;->Pm:Lcom/google/android/gms/internal/mi$a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic il()Lcom/google/android/gms/internal/mi$a;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/mi$a;->Pl:Lcom/google/android/gms/internal/mi$a;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/mi$a;->Pm:Lcom/google/android/gms/internal/mi$a$a;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
