// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.accessibility.AccessibilityManager;
import android.view.ViewGroup;
import android.util.Property;
import android.os.Bundle;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.PropertyListBuilder;
import android.animation.ObjectAnimator;
import android.view.View;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.anim.AnimationLayerSet;
import com.android.launcher3.dragndrop.DragLayer;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.animation.AnimatorSet;

public class WorkspaceStateTransitionAnimation
{
    int mAllAppsTransitionTime;
    final Launcher mLauncher;
    float mNewScale;
    int mOverlayTransitionTime;
    float mOverviewModeShrinkFactor;
    int mOverviewTransitionTime;
    float mSpringLoadedShrinkFactor;
    int mSpringLoadedTransitionTime;
    AnimatorSet mStateAnimator;
    final Workspace mWorkspace;
    boolean mWorkspaceFadeInAdjacentScreens;
    float mWorkspaceScrimAlpha;
    final ZoomInInterpolator mZoomInInterpolator;
    
    public WorkspaceStateTransitionAnimation(final Launcher mLauncher, final Workspace mWorkspace) {
        final float n = 100.0f;
        this.mZoomInInterpolator = new ZoomInInterpolator();
        this.mLauncher = mLauncher;
        this.mWorkspace = mWorkspace;
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        final Resources resources = mLauncher.getResources();
        this.mAllAppsTransitionTime = resources.getInteger(2131558403);
        this.mOverviewTransitionTime = resources.getInteger(2131558404);
        this.mOverlayTransitionTime = resources.getInteger(2131558409);
        this.mSpringLoadedTransitionTime = this.mOverlayTransitionTime / 2;
        this.mSpringLoadedShrinkFactor = this.mLauncher.getDeviceProfile().workspaceSpringLoadShrinkFactor;
        this.mOverviewModeShrinkFactor = resources.getInteger(2131558406) / n;
        this.mWorkspaceScrimAlpha = resources.getInteger(2131558402) / n;
        this.mWorkspaceFadeInAdjacentScreens = deviceProfile.shouldFadeAdjacentWorkspaceScreens();
    }
    
    private void animateBackgroundGradient(final TransitionStates transitionStates, final boolean b, final int n) {
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        final float backgroundAlpha = dragLayer.getBackgroundAlpha();
        float mWorkspaceScrimAlpha;
        if (transitionStates.stateIsNormal || transitionStates.stateIsNormalHidden) {
            mWorkspaceScrimAlpha = 0.0f;
        }
        else {
            mWorkspaceScrimAlpha = this.mWorkspaceScrimAlpha;
        }
        if (mWorkspaceScrimAlpha != backgroundAlpha) {
            if (b) {
                final ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[] { backgroundAlpha, mWorkspaceScrimAlpha });
                ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new WorkspaceStateTransitionAnimation$2(this, dragLayer));
                ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.5f));
                ofFloat.setDuration((long)n);
                this.mStateAnimator.play((Animator)ofFloat);
            }
            else {
                dragLayer.setBackgroundAlpha(mWorkspaceScrimAlpha);
            }
        }
    }
    
    private void animateWorkspace(final TransitionStates transitionStates, final boolean b, final int n, final AnimationLayerSet set, final boolean b2) {
        this.cancelAnimation();
        if (b) {
            this.mStateAnimator = LauncherAnimUtils.createAnimatorSet();
        }
        float backgroundAlpha;
        if (transitionStates.stateIsSpringLoaded || transitionStates.stateIsOverview) {
            backgroundAlpha = 1.0f;
        }
        else {
            backgroundAlpha = 0.0f;
        }
        float n2;
        if (transitionStates.stateIsNormal || transitionStates.stateIsSpringLoaded || (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && transitionStates.stateIsNormalHidden)) {
            n2 = 1.0f;
        }
        else {
            n2 = 0.0f;
        }
        float alpha;
        if (transitionStates.stateIsOverview) {
            alpha = 1.0f;
        }
        else {
            alpha = 0.0f;
        }
        float n3;
        if (transitionStates.stateIsNormal || (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && transitionStates.stateIsNormalHidden)) {
            n3 = 1.0f;
        }
        else {
            n3 = 0.0f;
        }
        float springLoadedTranslationY;
        if (transitionStates.stateIsOverview || transitionStates.stateIsOverviewHidden) {
            springLoadedTranslationY = this.mWorkspace.getOverviewModeTranslationY();
        }
        else if (transitionStates.stateIsSpringLoaded) {
            springLoadedTranslationY = this.mWorkspace.getSpringLoadedTranslationY();
        }
        else {
            springLoadedTranslationY = 0.0f;
        }
        final int childCount = this.mWorkspace.getChildCount();
        final int numCustomPages = this.mWorkspace.numCustomPages();
        this.mNewScale = 1.0f;
        if (transitionStates.oldStateIsOverview) {
            this.mWorkspace.disableFreeScroll();
        }
        else if (transitionStates.stateIsOverview) {
            this.mWorkspace.enableFreeScroll();
        }
        if (!transitionStates.stateIsNormal) {
            if (transitionStates.stateIsSpringLoaded) {
                this.mNewScale = this.mSpringLoadedShrinkFactor;
            }
            else if (transitionStates.stateIsOverview || transitionStates.stateIsOverviewHidden) {
                this.mNewScale = this.mOverviewModeShrinkFactor;
            }
        }
        final int pageNearestToCenterOfScreen = this.mWorkspace.getPageNearestToCenterOfScreen();
        for (int i = 0; i < childCount; ++i) {
            final CellLayout cellLayout = (CellLayout)this.mWorkspace.getChildAt(i);
            float alpha2 = cellLayout.getShortcutsAndWidgets().getAlpha();
            float shortcutAndWidgetAlpha;
            if (transitionStates.stateIsOverviewHidden) {
                shortcutAndWidgetAlpha = 0.0f;
            }
            else if (transitionStates.stateIsNormalHidden) {
                int n4;
                if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && i == this.mWorkspace.getNextPage()) {
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
                shortcutAndWidgetAlpha = n4;
            }
            else if (transitionStates.stateIsNormal && this.mWorkspaceFadeInAdjacentScreens) {
                if (i == pageNearestToCenterOfScreen || i < numCustomPages) {
                    shortcutAndWidgetAlpha = 1.0f;
                }
                else {
                    shortcutAndWidgetAlpha = 0.0f;
                }
            }
            else {
                shortcutAndWidgetAlpha = 1.0f;
            }
            if (!FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && (this.mWorkspace.isSwitchingState() ^ true) && (transitionStates.workspaceToAllApps || transitionStates.allAppsToWorkspace)) {
                final int n5;
                boolean b3;
                if (i == (n5 = pageNearestToCenterOfScreen)) {
                    b3 = true;
                }
                else {
                    b3 = false;
                }
                float shortcutAndWidgetAlpha2;
                if (transitionStates.allAppsToWorkspace && b3) {
                    shortcutAndWidgetAlpha2 = 0.0f;
                }
                else if (!b3) {
                    shortcutAndWidgetAlpha = 0.0f;
                    shortcutAndWidgetAlpha2 = 0.0f;
                }
                else {
                    shortcutAndWidgetAlpha2 = alpha2;
                }
                cellLayout.setShortcutAndWidgetAlpha(shortcutAndWidgetAlpha2);
                alpha2 = shortcutAndWidgetAlpha2;
            }
            if (b) {
                final float backgroundAlpha2 = cellLayout.getBackgroundAlpha();
                if (alpha2 != shortcutAndWidgetAlpha) {
                    final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
                    final Property alpha3 = View.ALPHA;
                    final float[] array;
                    (array = new float[1])[0] = shortcutAndWidgetAlpha;
                    final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)shortcutsAndWidgets, alpha3, array);
                    ((Animator)ofFloat).setDuration((long)n).setInterpolator((TimeInterpolator)this.mZoomInInterpolator);
                    this.mStateAnimator.play((Animator)ofFloat);
                }
                if (backgroundAlpha2 != 0.0f || backgroundAlpha != 0.0f) {
                    final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)cellLayout, "backgroundAlpha", new float[] { backgroundAlpha2, backgroundAlpha });
                    ((ValueAnimator)ofFloat2).setInterpolator((TimeInterpolator)this.mZoomInInterpolator);
                    ((ValueAnimator)ofFloat2).setDuration((long)n);
                    this.mStateAnimator.play((Animator)ofFloat2);
                }
            }
            else {
                cellLayout.setBackgroundAlpha(backgroundAlpha);
                cellLayout.setShortcutAndWidgetAlpha(shortcutAndWidgetAlpha);
            }
            if (Workspace.isQsbContainerPage(i) && transitionStates.stateIsNormal && this.mWorkspaceFadeInAdjacentScreens) {
                if (b) {
                    final Animator animateAlphaAtIndex = this.mWorkspace.mQsbAlphaController.animateAlphaAtIndex(shortcutAndWidgetAlpha, 2);
                    animateAlphaAtIndex.setDuration((long)n);
                    animateAlphaAtIndex.setInterpolator((TimeInterpolator)this.mZoomInInterpolator);
                    this.mStateAnimator.play(animateAlphaAtIndex);
                }
                else {
                    this.mWorkspace.mQsbAlphaController.setAlphaAtIndex(shortcutAndWidgetAlpha, 2);
                }
            }
        }
        final ViewGroup overviewPanel = this.mLauncher.getOverviewPanel();
        final Animator animateAlphaAtIndex2 = this.mWorkspace.mQsbAlphaController.animateAlphaAtIndex(n3, 0);
        if (b) {
            final ObjectAnimator setDuration = LauncherAnimUtils.ofPropertyValuesHolder((View)this.mWorkspace, new PropertyListBuilder().scale(this.mNewScale).translationY(springLoadedTranslationY).build()).setDuration((long)n);
            ((Animator)setDuration).setInterpolator((TimeInterpolator)this.mZoomInInterpolator);
            this.mStateAnimator.play((Animator)setDuration);
            final ValueAnimator hotseatAlphaAnimator = this.mWorkspace.createHotseatAlphaAnimator(n2);
            final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object)overviewPanel, View.ALPHA, new float[] { alpha });
            ((Animator)ofFloat3).addListener((Animator$AnimatorListener)new AlphaUpdateListener((View)overviewPanel, b2));
            set.addView((View)overviewPanel);
            set.addView(this.mLauncher.getQsbContainer());
            set.addView((View)this.mLauncher.getHotseat());
            set.addView((View)this.mWorkspace.getPageIndicator());
            if (transitionStates.workspaceToOverview) {
                ((Animator)hotseatAlphaAnimator).setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
                ((Animator)ofFloat3).setInterpolator((TimeInterpolator)null);
            }
            else if (transitionStates.overviewToWorkspace) {
                ((Animator)hotseatAlphaAnimator).setInterpolator((TimeInterpolator)null);
                ((Animator)ofFloat3).setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
            }
            ((Animator)ofFloat3).setDuration((long)n);
            ((Animator)hotseatAlphaAnimator).setDuration((long)n);
            animateAlphaAtIndex2.setDuration((long)n);
            this.mStateAnimator.play((Animator)ofFloat3);
            this.mStateAnimator.play((Animator)hotseatAlphaAnimator);
            this.mStateAnimator.play(animateAlphaAtIndex2);
            this.mStateAnimator.addListener((Animator$AnimatorListener)new WorkspaceStateTransitionAnimation$1(this, transitionStates, b2, overviewPanel));
        }
        else {
            overviewPanel.setAlpha(alpha);
            AlphaUpdateListener.updateVisibility((View)overviewPanel, b2);
            this.mWorkspace.getPageIndicator().setShouldAutoHide(transitionStates.stateIsSpringLoaded ^ true);
            animateAlphaAtIndex2.end();
            this.mWorkspace.createHotseatAlphaAnimator(n2).end();
            this.mWorkspace.updateCustomContentVisibility();
            this.mWorkspace.setScaleX(this.mNewScale);
            this.mWorkspace.setScaleY(this.mNewScale);
            this.mWorkspace.setTranslationY(springLoadedTranslationY);
            if (b2 && overviewPanel.getVisibility() == 0) {
                overviewPanel.getChildAt(0).performAccessibilityAction(64, (Bundle)null);
            }
        }
    }
    
    private void cancelAnimation() {
        if (this.mStateAnimator != null) {
            this.mStateAnimator.setDuration(0L);
            this.mStateAnimator.cancel();
        }
        this.mStateAnimator = null;
    }
    
    private int getAnimationDuration(final TransitionStates transitionStates) {
        if (transitionStates.workspaceToAllApps || transitionStates.overviewToAllApps) {
            return this.mAllAppsTransitionTime;
        }
        if (transitionStates.workspaceToOverview || transitionStates.overviewToWorkspace) {
            return this.mOverviewTransitionTime;
        }
        if (this.mLauncher.mState == Launcher$State.WORKSPACE_SPRING_LOADED || (transitionStates.oldStateIsNormal && transitionStates.stateIsSpringLoaded)) {
            return this.mSpringLoadedTransitionTime;
        }
        return this.mOverlayTransitionTime;
    }
    
    public AnimatorSet getAnimationToState(final Workspace$State workspace$State, final Workspace$State workspace$State2, final boolean b, final AnimationLayerSet set) {
        final boolean enabled = ((AccessibilityManager)this.mLauncher.getSystemService("accessibility")).isEnabled();
        final TransitionStates transitionStates = new TransitionStates(workspace$State, workspace$State2);
        this.animateWorkspace(transitionStates, b, this.getAnimationDuration(transitionStates), set, enabled);
        this.animateBackgroundGradient(transitionStates, b, 350);
        return this.mStateAnimator;
    }
    
    public float getFinalScale() {
        return this.mNewScale;
    }
    
    public void snapToPageFromOverView(final int n) {
        this.mWorkspace.snapToPage(n, this.mOverviewTransitionTime, (TimeInterpolator)this.mZoomInInterpolator);
    }
}
