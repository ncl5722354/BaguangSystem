﻿#pragma checksum "..\..\DataQushi.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "C817CE49B06CA9EEA02BF48E2ED175264817EC00"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace WpfBrowser_warningsystem {
    
    
    /// <summary>
    /// DataQushi
    /// </summary>
    public partial class DataQushi : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 9 "..\..\DataQushi.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label label_select_jizhun;
        
        #line default
        #line hidden
        
        
        #line 10 "..\..\DataQushi.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cob_select_jizhun;
        
        #line default
        #line hidden
        
        
        #line 11 "..\..\DataQushi.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer treeviewscrollviewer;
        
        #line default
        #line hidden
        
        
        #line 12 "..\..\DataQushi.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TreeView mytreeview;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/WpfBrowser_warningsystem;component/dataqushi.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\DataQushi.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.label_select_jizhun = ((System.Windows.Controls.Label)(target));
            return;
            case 2:
            this.cob_select_jizhun = ((System.Windows.Controls.ComboBox)(target));
            
            #line 10 "..\..\DataQushi.xaml"
            this.cob_select_jizhun.MouseEnter += new System.Windows.Input.MouseEventHandler(this.cob_select_jizhun_MouseEnter);
            
            #line default
            #line hidden
            
            #line 10 "..\..\DataQushi.xaml"
            this.cob_select_jizhun.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cob_select_jizhun_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.treeviewscrollviewer = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 4:
            this.mytreeview = ((System.Windows.Controls.TreeView)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
