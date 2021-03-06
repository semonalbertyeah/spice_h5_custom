Name:           spice-html5
Version:        0.1.6
Release:        1%{?dist}
Summary:        Pure Javascript SPICE client

License:        LGPLv3
URL:            http://www.spice-space.org
Source0:        http://people.freedesktop.org/~jwhite/%{name}/%{name}-%{version}.tar.gz

BuildArch:      noarch

%description
%{name} is a Javascript SPICE client.  This includes a simple HTML
page to initiate a session, and the client itself.  It includes a configuration
file for Apache, but should work with any web server.

%prep
%setup -q


%build

%install
%make_install


%files
%{_datadir}/%{name}
%doc COPYING COPYING.LESSER README TODO apache.conf.sample


%changelog
* Fri Mar 13 2015 Jeremy White <jwhite@codeweavers.com> 0.1.6-1
- Pavel Grunt: Implement file transfer from client to guest
- Pavel Grunt: Report agent capabilities, handle agent tokens
- Pavel Grunt: Use WheelEvent instead of MouseWheelEvent
- Frantisek Kobzik: Improve error messages
- Report a modern number of tokens

* Thu Sep 25 2014 Jeremy White <jwhite@codeweavers.com> 0.1.5-1
- If an agent is attached, enable dynamic resizing of the guest screen.
- Add support for audio streams using the Opus encoding.
- Vladik Romanovsky: Use wss scheme when accessing with https protocol

* Thu Sep 19 2013 Jeremy White <jwhite@codeweavers.com> 0.1.4-1
- Reduce memory leaks
- Ack every message.
- Aric Stewart: Fix and implement cache handling
- Jordan Pittier: Fix default websocket port detection in spice_auto.html
- Alon Levy: remove default password
- Thomas Goirand - Adds missing mapping of the alphanumeric minus key

* Thu May 23 2013 Jeremy White <jwhite@codeweavers.com> 0.1.3-1
- Correct spice_auto.html for a missing include for the spice array buffer.
- Provide limited compatibility for IE10.
- Amos Benari: added on succeess event and added sendCtrlAltDel method.

* Mon Feb 25 2013 Jeremy White <jwhite@codeweavers.com> 0.1.2-2
- Revise the .spec file to use %%{name}, and remove a few uneeded statements
- No longer install apache.conf, just put a sample under doc/
- Switch to an alternate download location, more easily updated

* Wed Feb 13 2013 Jeremy White <jwhite@codeweavers.com> 0.1.1-1
- Correct the license to LGPL
- Revise the Apache configuration file to allow access more broadly

* Fri Feb 8 2013 Jeremy White <jwhite@codeweavers.com> 0.1.0-1
- Initial version for packaging.
