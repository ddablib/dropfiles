# Change Log for Drop Files Components

## v5.0.5 of 11 January 2014

+ Fixed problem with compiler directives in component and demo source files that was causing compilation to fail on Delphi XE5.

## v5.0.4 of 04 November 2013

+ Changed form used for _TPJExtFileFilter.Extensions_ property editor:
  + Form is no longer scaled.
  + Form font changed to Arial 9pt.
+ Unit names in the component design source file and in all demo source files are now qualified with namespace on Delphi XE2 and later.
+ Updated demos:
  + Provided project files in different formats for different versions of Delphi, including dual 32 and 64 bit targets for Delphi XE2 and later.
  + Updated project resource file to include a manifest along with main icon.
  + Provided an icon file for each demo project.
  + Fixed a colour related bug in main window of _DropFilesDemo_.
+ Updated documentation including new read-me for demo projects.

## v5.0.3 of 02 November 2013

+ Modified components to compile and function correctly with 64 bit Delphi compilers.
+ Unit names in the component source file are now qualified with namespace on Delphi XE2 and later.
+ Changes to demo projects:
  + Font changed to Arial 9pt
  + Appearance of some controls changed.
  + All form files now in text format.
  + Forms no longer scaled.
  + All demos now need Delphi 7 as a minimum.
+ License changes:
  + Component source license changed to Mozilla Public License v2.0
  + Demo source code placed in public domain (Creative Commons CC0 1.0 Universal).
+ MPL text file and documentation wiki short-cut have had names changed.
+ _WinHelp_ help file regenerated with updated copyright date.
+ Documentation revised.

## v5.0.2 of 14 January 2010

+ Enabled function inlining on Delphi 2005 and later.
+ Switched off some compilation warnings on Delphi 7 and later.
+ Simplified compiler directives.
+ Updated documentation including corrections to help file.
+ Included copy of MPL in release.

## v5.0.1 of 19 October 2006

+ Fixed bug that was occasionally freezing IDE when closing a form containing a _TPJSubClassedDropFiles_ descendant component.

## v5.0 of 19 March 2006

+ Added new _TPJCtrlDropFiles_ component that handles file drops for any assigned _TWinControl_ descendant. _TPJCtrlDropFiles_ descends from new _TPJSubClassedDropFiles_ abstract component.
+ Revised _TPJFormDropFiles_ to descend from _TPJSubClassedDropFiles_.
+ Exposed several new properties of _TPJDropFiles_: _Anchors_, _Constraints_, _TabOrder_, _TabStop_ and _Visible_.
+ Changed pass through processing to find ultimate owning form rather than simply parent form. This allows pass through processing to work with frames.
+ Hidden controls are now ignored when searching for _DropControl_.
+ Fixed bug in _TPJWildCardFileFilter_ that didn't respond to change in wild-card when files dragged from same folder.
+ Updated help file and a-link keyword file re new component and fixed some errors in help file.
+ Completely rewrote demo program that exercises all components and added second demo program to show how to use _TPJCtrlDropFiles_ with frames.

## v4.1.2 of 21 December 2005

+ Fixed bugs preventing component compilation with Delphi 3, 2005 and 2006.
+ Fixed bug preventing demo program compilation with Delphi 3.
+ Added new a-link keyword file for use with Delphi 6/7 OpenHelp.

## v4.1.1 of 02 October 2004

+ Re-factored the component editor, _TPJDropFilesCE_. Now has a much simpler implementation.

## v4.1 of 27 September 2004

+ Added new property editor for the _TPJExtFileFilter.Extensions_ property that displays a dialogue that assists in building the extension string.
+ Added new component editor for _TPJFormDropFiles_ and _TPJDropFiles_ that creates an _OnDropFiles_ event handler in the designer when the components are double clicked rather than the previous default _OnBeforeDrop_ event handler.
+ Switched off the DelphiDabbler extended string property editor (if present) for _TPJWildCardFileFilter_'s _Wildcard_ property.
+ Added new design unit - _PJDropFilesDsgn_ - to store property editor, component editor and component registration.
+ Removed component registration code from _PJDropFiles_ unit to _PJDropFilesDsgn_ unit.
+ Updated help file re new property editor.

## v4.0 of 12 April 2004

+ Added ability to filter files dropped on the controls, either via the new _OnFileFilter_ event or by using a linked file filter component.
+ Added abstract base class for new file filter components.
+ Added filter component that filters on file extensions.
+ Added filter component that filters file names on wild-cards.
+ Fixed a memory leak in _TPJAbstractDropFilesHelper.Destroy_.
+ Created component glyphs for new filter components.
+ Updated help file.
+ Updated demo program re new features.

## v3.2 of 09 February 2004

+ Fixed bug in code that determines control under drop point - the parent of the actual control under the cursor was often being returned.
+ Corrected errors and typos in help file.
+ Changed to Mozilla public license.
+ Added demo program.

## v3.1 of 29 July 2003

+ Prevented compiler warnings when compiling the component under Delphi 6 and 7.
+ Updated copyright information in help file.

## v3.0 of 27 October 2002

+ Major update (backwards compatible with v2)
+ Added new _Options_ property to determine how dropped files are handled. Options are:
  + to include or exclude folders from list
  + to include or exclude ordinary files from list
  + to add files and/or folders contained in dropped folders and their sub-folders.
+ Added new _OnBeforeDrop_ event that is triggered before dropped files are processed.
+ Added new _IsFolder_ array property that informs if a dropped file is a file or folder.
+ Fixed a bug in _TPJFormDropFiles_ that was causing programs to halt on exceptions raised inside _OnDropFiles_ event handlers.
+ Changed component palette name from "PJ Stuff" to "DelphiDabbler".

## v2.0.1 of 13 May 2001

+ Fixed minor bug where strings holding names of dropped files had incorrect length set.

## v2.0 of 29 April 2001

+ Completely rewrote _TPJDropFiles_ component and added _FileName_, _PassThrough_ and _ForegroundOnDrop_ properties.
+ Added new _TPJFormDropFiles_ component.
+ Changed _OnDropFiles_ event type so it no longer provides drop coordinates: we now use _DropPoint_ property instead.
+ Rewrote help file for _OpenHelp_ compatibility.
+ Broke backwards compatibility with Delphi 1.
+ Changed unit name from _DrpFiles_ to _PJDropFiles_.

## v1.1.1a of 28 November 1999

+ Updated HTML documentation to include installation notes for Delphi 3/4 and update history.

## v1.1.1 of 10 April 1999

+ Changed component palette from "Own" to "PJ Stuff".
+ Added HTML documentation.

## v1.1 of 22 October 1998 {Never publicly released}

+ Changed 2nd parameter to _DragQueryFile_ API call, when used to find number of files dropped, from _$FFFF_ to _Cardinal(-1)_ to make it portable across 16 and 32 bit platforms. This was needed to allow the component to compile under Delphi 2.

## v1.0 of 15 May 1998 {Never publicly released}

+ Original version - 16 bit only.
