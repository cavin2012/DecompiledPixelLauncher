// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.animation.AnimatorSet;
import android.animation.Animator;
import com.android.launcher3.anim.AnimationLayerSet;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.HashSet;
import android.os.UserHandle;
import android.os.Bundle;
import android.animation.LayoutTransition$TransitionListener;
import android.appwidget.AppWidgetProviderInfo;
import android.os.IBinder;
import android.view.View$OnClickListener;
import com.android.launcher3.accessibility.OverviewAccessibilityDelegate;
import java.util.Iterator;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.MotionEvent;
import android.graphics.Bitmap$Config;
import android.view.View$MeasureSpec;
import android.view.accessibility.AccessibilityManager;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.graphics.Bitmap;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import android.graphics.Point;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.accessibility.OverviewScreenAccessibilityDelegate;
import android.widget.Toast;
import android.util.Property;
import android.appwidget.AppWidgetHostView;
import android.view.ViewGroup;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.android.launcher3.dragndrop.DragView;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.folder.Folder;
import android.view.View$OnKeyListener;
import android.util.Log;
import android.content.res.Resources;
import android.view.animation.DecelerateInterpolator;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.util.LongArrayMap;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import android.app.WallpaperManager;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import android.util.SparseArray;
import java.util.ArrayList;
import com.android.launcher3.util.MultiStateAlphaController;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.graphics.DragPreviewProvider;
import android.animation.LayoutTransition;
import com.android.launcher3.folder.FolderIcon$PreviewBackground;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.dragndrop.DragController;
import android.graphics.Canvas;
import android.view.animation.Interpolator;
import android.graphics.Rect;
import android.view.ViewGroup$OnHierarchyChangeListener;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnTouchListener;
import android.view.View;

final class Workspace$2 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ CellLayout val$cl;
    final /* synthetic */ boolean val$stripEmptyScreens;
    
    Workspace$2(final Workspace this$0, final CellLayout val$cl, final boolean val$stripEmptyScreens) {
        this.this$0 = this$0;
        this.val$cl = val$cl;
        this.val$stripEmptyScreens = val$stripEmptyScreens;
    }
    
    public void run() {
        final long n = -201L;
        if (this.this$0.hasExtraEmptyScreen()) {
            this.this$0.mWorkspaceScreens.remove(n);
            this.this$0.mScreenOrder.remove(n);
            this.this$0.removeView((View)this.val$cl);
            if (this.val$stripEmptyScreens) {
                this.this$0.stripEmptyScreens();
            }
            this.this$0.showPageIndicatorAtCurrentScroll();
        }
    }
}
