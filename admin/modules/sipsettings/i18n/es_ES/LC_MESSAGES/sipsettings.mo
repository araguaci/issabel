��    f      L  �   |      �  �   �     <	  	   T	     ^	     v	  !   �	     �	  �  �	  U   �  �   �  �   �  �  �  �   T  v   	  �   �  �  M    �  \   �     D  Q  e  �  �  �     �  b  c     C  l  �   �     a      n      }   	   �      �      �   �   �   /   3!  g   c!  n   �!     :"  2   J"     }"     �"     �"  
   �"     �"     �"     �"     �"  `   �"     ;#  x   L#     �#  }   �#     K$     W$  V   t$  ,   �$     �$     %  H   +%  @   t%     �%     �%     �%     U&     l&     &     �&  �   �&     �'     �'     �'  '   �'     �'     �'     �'     (     (     %(     4(  	   G(     Q(  
   a(     l(     y(     �(     �(     �(  
   �(  	   �(     �(     �(     �(     	)     )     3)     A)     N)     \)  v  `)     �*     �*     �*  5  �*  �   #,     �,     �,     �,     �,  )   -     ?-  =  V-  h   �0  �   �0  �   �1  �  �2  �   �4  �   �5  �    6  D  �6  �   )8  j   9  �   �9  �  �:  �  =  �   �>  �  �?  q   A  �  �A  �   zD     /E     ?E     ZE     rE     �E     �E  �   �E  5   ]F  U   �F  {   �F     eG  '   zG     �G     �G     �G     �G     �G     �G     �G  
   H  y   %H     �H  �   �H  
   BI  �   MI  
   �I  2   �I  _   J  4   rJ  %   �J     �J  W   �J  Z   :K     �K     �K  �   �K     VL     sL     �L     �L    �L     �M     �M     �M  G   �M     GN     [N     ^N     pN     �N     �N     �N     �N     �N     �N     �N     O     !O  	   5O     ?O     WO     dO     qO     �O     �O     �O  *   �O     �O     �O      P     P  �   P  	   �P     �P     �P         R   T   `   O       A   M   8   <       K   7              b   )   1       9   Q   S       5   $             -                     ;   ,   d   ]   0   B          &   a             .   Y              ^       4   '          %   N      ?                  I   \      /      6          P      W   >   +   D   H      V       
              X       _   3   C          F               f   2   [   !   	   L   e          E       U                #   (   *            =      @   J   G                  c   :       Z   "     If you clear each codec and then add them one at a time, submitting with each addition, they will be added in order which will effect the codec priority. %s must be alphanumeric Add Field Add Local Network Field Advanced General Settings Allow Anonymous Inbound SIP Calls Allow SIP Guests Allowing Inbound Anonymous SIP calls means that you will allow any call coming in form an un-known IP source to be directed to the 'from-pstn' side of your dialplan. This is where inbound calls come in. Although IssabelPBX severely restricts access to the internal dialplan, allowing Anonymous SIP calls does introduced additional security risks. If you allow SIP URI dialing to your PBX or use services like ENUM, you will be required to set this to Yes for Inbound traffic to work. This is NOT an Asterisk sip.conf setting, it is used in the dialplan in conjuction with the Default Context. If that context is changed above to something custom this setting may be rendered useless as well as if 'Allow SIP Guests' is set to no. Asterisk 1.8 all supports IPv6. An address of '::' will listen on both IPv4 and IPv6. Asterisk NAT setting:<br /> yes = Always ignore info and assume NAT<br /> no = Use NAT mode only according to RFC3581 <br /> never = Never attempt NAT mode or RFC3581 <br /> route = Assume NAT, don't send rport Asterisk: TLS bindport. Local incoming TLS Port that Asterisk will bind to and listen for SIP messages. The SIP standard is 5061 and in most cases this is what you want. It is recommended to leave this blank. Asterisk: allowguest. When set Asterisk will allow Guest SIP calls and send them to the Default SIP context. Turning this off will keep anonymous SIP calls from entering the system. Doing such will also stop 'Allow Anonymous Inbound SIP Calls' from functioning. Allowing guest calls but rejecting the Anonymous SIP calls below will enable you to see the call attempts and debug incoming calls that may be mis-configured and appearing as guests. Asterisk: bindaddr. The IP address to bind to and listen for calls on the Bind Port. If set to 0.0.0.0 Asterisk will listen on all addresses. It is recommended to leave this blank. Asterisk: bindport. Local incoming Port for TLS connections in PJSIP, must be different than regular UDP/TCP bind port Asterisk: bindport. Local incoming UDP Port that Asterisk will bind to and listen for SIP messages. The SIP standard is 5060 and in most cases this is what you want. It is recommended to leave this blank. Asterisk: canreinvite. yes: standard reinvites; no: never; nonat: An additional option is to allow media path redirection (reinvite) but only when the peer where the media is being sent is known to not be behind a NAT (as the RTP core can determine it based on the apparent IP address the media arrives from; update: use UPDATE for media path redirection, instead of INVITE. (yes = update + nonat) Asterisk: context. Default context for incoming calls if not specified. IssabelPBX sets this to from-sip-external which is used in conjunction with the Allow Anonymous SIP calls. If you change this you will effect that behavior. It is recommended to leave this blank. Asterisk: externrefresh. How often to lookup and refresh the External Host FQDN, in seconds. Asterisk: g726nonstandard. If the peer negotiates G726-32 audio, use AAL2 packing order instead of RFC3551 packing order (this is required for Sipura and Grandstream ATAs, among others). This is contrary to the RFC3551 specification, the peer _should_ be negotiating AAL2-G726-32 instead. Asterisk: jbenable. Enables the use of a jitterbuffer on the receiving side of a SIP channel. An enabled jitterbuffer will be used only if the sending side can create and the receiving side can not accept jitter. The SIP channel can accept jitter, thus a jitterbuffer on the receive SIP side will be used only if it is forced and enabled. An example is if receiving from a jittery channel to voicemail, the jitter buffer will be used if enabled. However, it will not be used when sending to a SIP endpoint since they usually have their own jitter buffers. See jbforce to force it's use always. Asterisk: jbforce. Forces the use of a jitterbuffer on the receive side of a SIP channel. Normally the jitter buffer will not be used if receiving a jittery channel but sending it off to another channel such as another SIP channel to an endpoint, since there is typically a jitter buffer at the far end. This will force the use of the jitter buffer before sending the stream on. This is not typically desired as it adds additional latency into the stream. Asterisk: minexpiry. Minimum length of registrations/subscriptions.<br /> Asterisk: maxepiry. Maximum allowed time of incoming registrations<br /> Asterisk: defaultexpiry. Default length of incoming and outgoing registrations. Asterisk: registertimeout. Retry registration attempts every registertimeout seconds until successful or until registrationattempts tries have been made.<br /> Asterisk: registrationattempts. Number of times to try and register before giving up. A value of 0 means keep trying forever. Normally this should be set to 0 so that Asterisk will continue to register until successful in the case of network or gateway outages. Asterisk: rtpstart. The starting RTP port range.<br /> Asterisk: rtpend. The ending RTP port range. Asterisk: rtptimeout. Terminate call if rtptimeout seconds of no RTP or RTCP activity on the audio channel when we're not on hold. This is to be able to hangup a call in the case of a phone disappearing from the net, like a powerloss or someone tripping over a cable.<br /> Asterisk: rtpholdtimeout. Terminate call if rtpholdtimeout seconds of no RTP or RTCP activity on the audio channel when we're on hold (must be > rtptimeout). <br /> Asterisk: rtpkeepalive. Send keepalives in the RTP stream to keep NAT open during periods where no RTP stream may be flowing (like on hold). Asterisk: t38pt_udptl. Enables T38 passthrough if enabled. This SIP channels that support sending/receiving T38 Fax codecs to pass the call. Asterisk can not process the media. Audio Codecs Auto Configure Bind Address Bind Port Call Events Certificate Check the desired codecs, all others will be disabled unless explicitly enabled in a device or trunks configuration. Drag to re-order. Check to enable and then choose allowed codecs. Control whether subscriptions INUSE get sent ONHOLD when call is placed on hold. Useful when using BLF. Control whether subscriptions already INUSE get sent RINGING when another call is sent. Useful when using BLF. Default Context Default Language for a channel, Asterisk: language Disable Disabled Dynamic Host Dynamic IP ERRORS Edit PJSIP Settings Edit SIP Settings Enable Enable Asterisk srvlookup. See current version of Asterisk for limitations on SRV functionality. Enable Websocket Enable websocket connection handling thorugh chan_sip. If you want to handle websockets/webrtc via PJSIP, set this to no Enabled External FQDN as seen on the WAN side of the router and updated dynamically, e.g. mydomain.dyndns.com. (asterisk: externhost) External IP External IP can not be blank External Static IP or FQDN as seen on the WAN side of the router. (asterisk: externip) Failed to auto-detect local network settings Failed to auto-detect settings Force Jitter Buffer Frequency in seconds to check if MWI state has changed and inform peers. Generate manager events when sip ua performs events (e.g. hold). IP Configuration Implementation Indicate whether the box has a public IP or requires NAT settings. Automatic configuration of what is often put in sip_nat.conf Jitter Buffer Settings Jitter Buffer Size Language Local Networks Local network settings (Asterisk: localnet) in the form of ip/mask such as 192.168.1.0/255.255.255.0. For networks with more 1 lan subnets, use the Add Local Network Field button for more fields. Blank fields will be removed upon submitting. MEDIA & RTP Settings MWI Polling Freq Max Bit Rate Maximum bitrate for video calls in kb/s NAT Settings No Non-Standard g726 Notification & MWI Notify Hold Notify Ringing Other SIP Settings Public IP RTP Port Ranges RTP Timers Refresh Rate Registration Settings Registration Times Registrations Reinvite Behavior SRV Lookup Static IP Submit Changes T38 Pass-Through TCP/UDP Transport TLS Bind Port TLS Certificate file to use TLS Transport Video Codecs Video Support Yes You may set any other SIP settings not present here that are allowed to be configured in the General section of sip.conf. There will be no error checking against these settings so check them carefully. They should be entered as:<br /> [setting] = [value]<br /> in the boxes below. Click the Add Field box to add additional fields. Blank boxes will be deleted when submitted. already exists no yes Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-09-23 09:52+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
  Si desmarca cada coden y luego agrega uno por uno, enviando cambios cada vez, el orden de los mismos se preservará, pudiendo especificar así su prioridad. %s debe ser alfanumérico Agregar Campo Agregar Red Local Configuraciones Avanzadas Permitir llamadas entrantes SIP anónimas Permitir Invitados SIP Permitir llamadas SIP anónimas entrantes significa que permitirá que cualquier llamada que provenga de una fuente IP desconocida se dirija al contexto 'from-pstn' de su plan de marcado. Aquí es donde entran las llamadas entrantes. Aunque IssabelPBX restringe severamente el acceso al plan de marcado interno, permitir llamadas SIP anónimas introduce riesgos de seguridad adicionales. Si permite la marcación SIP URI a su PBX o utiliza servicios como ENUM, se le pedirá que lo configure en Sí para que funcione el tráfico entrante. Esta NO es una configuración de Asterisk sip.conf, se usa en el plan de marcación junto con el contexto predeterminado. Si ese contexto se cambia anteriormente a algo personalizado, esta configuración puede volverse inútil, así como si 'Permitir Invitados SIP' está configurado en no. Asterisk 1.8 y superior soporta IPv6. Una dirección '::' permitirá escuchar tanto en IPv4 como en IPv6 Configuración NAT de Asterisk:<br /> yes = Ignorar siempre info y asumir NAT<br /> no = Sólo usar modo NAT de acuerdo al RFC3581 <br /> never = Nunca intentar modo NAT ni modo RFC3581 <br /> route = Asumir NAT, pero no enviar rport Puerto entrante local en el que Asterisk enlazará para llamadas entrantes SIP encriptadas con TLS. El standard SIP es 5061 y en la mayoría de los casos no conviene cambiarlo. Se recomienda dejar este campo en blanco. Asterisk: allowguest. Cuando se active, Asterisk aceptará conexiones SIP desconocidas y las enviará al contexto SIP por defecto. Si desactiva esta opción Asterisk rechazará las llamadas SIP anónimas. Sin embargo, el permitir llamadas anónimas desde la configuración general no funcionará. Si permite las conexiones SIP anónimas aquí le permitirá ver y depurar intentos de llamada que puedan estar llegando como anónimas por una mala configuración del troncal. Asterisk: bindaddr. La dirección IP en la que Asterisk enlazará para escuchar conexiones SIP. Si se configura en 0.0.0.0 entonces se enlazará con todas las direcciones disponibles en el servidor. Se recomienda que deje este campo en blanco. Asterisk: bindport. Puerto entrante local en el que Asterisk enlazará para escuchar mensajes PJSIP. Debe ser distinto al puerto regular UDP/TCP Asterisk: bindport. Puerto UDP local en el que Asterisk enlazará para escuchar mensajes SIP. El estandar es 5060 y en la mayoría de los casos no debe modificarlo. Se recomienda dejar en blanco. Asterisk: canreinvite. si: reinvitación estandar; no: nunca; nonat: esta opción permita redirigir los medios pero solo cuando se sabe que los medios del peer no están detrás de NAT (ya que el núcleo RTP lo puede determinar); update: usar UPDATE para la redirección de medios, en lugar de INVITE. (yes = update + nonat) Asterisk: context. Contexto por defecto para llamadas entrantes. IssabelPBX usará from-sip-external que se usa en conjunto con Permitir llamadas anónimas. Si cambia esto, afectará ese comportamiento. Se recomienda dejar este campo en blanco. Asterisk: externrefresh. Que tan frecuentemente actualizar el FQND de Host Externo, expresado en segundos. Asterisk: g726nonstandard. Si el interlocutor negocia el audio G726-32, utilizar empaquetado AAL2 en lugar de RFC3551 (esto es necesario para ATA Grandstream o Sipura, entre otros). Esto es contrario al RFC3551 donde el par debería negociar AAL2-G726-32 Asterisk: jbenable. Habilita el uso de un búfer de fluctuación durante la recepción de audio de un canal SIP. Se utilizará solamente en caso que el lado de envío pueda crear y el lado que recibe no pueda aceptar jitter. El canal SIP puede aceptar jitter, por lo tanto el búfer de fluctuación será usado en la recepción SIP solo si se fuerza y se activa. Por ejemplo si se recibe un mensaje de voz desde un canal fluctuante, se activará y usará el búfer.Sin embargo, no se usará cuando se envíe a un endpoint SIP ya que usualmente serrá éste quien maneje sus propios búfers. Vea jbforce para forzar el uso de jitter buffers en toda ocasión. Asternic: jbforce. Fuerza el uso de búfer de fluctuación en la pata receptora de un canal SIP. Normalmente el búfer no será usado si se recibe de un canal con fluctuaciones pero se reenvía a otro canal como ser un endpoint SIP, ya que normalmente será el endpoint que procese su propio búfer. Este parámetro fuerza el uso del búfer antes de reenviar el flujo de datos. Esto usualmente no es deseado debido a que añade latencia a dicho flujo. Asterisk: minexpiry. Tiempo mínimo para registraciones/suscripciones.<br>Asterisk: maxexpiry. Tiempo máximo permitido entre intentos de registro entrantes.<br>Asterisk: defaultexpiry. Valor por defecto de duraión de registros entrantes y saliente. Asterisk: registertimeout. Reintentar registraciones cada intervalo de tiempo especificado aquí, expresado en segundos, hasta que se registra exitosamente o hasta que se exceden los intentos definidos en registrationattempts. Un valor de 0 significa que Asterisk continuará reintentando a perpetuidad. Normalmente este valor se deja en 0 así Asterisk no deja de intentar registros en caso de caídas de red o gateways. Asterisk: rtpstart. El comienzo del rango de puertos RTP.<br>Asterisk: rtpend. El final del rango de puertos RTP. Asterisk: rpttimeout. Terminar la llamada si se excede este tiempo en segundos sin tráfico RTP o RTCP en el canal de audio, mientras este no esté retenido. Esto se utiliza para poder colgar una llamada en caso que un teléfono desaparezca de la red debido a cualquier causa (fallo de energía, etc).<br>Asterisk: rtpholdtimeout. Terminar la llamada si se excede este tiempo en segundos sin tráfico RTP o RTCP en el canal de audio cuando la llamada está retenida (debe ser mayor a rtptimeout).<br>Asterisk: rtpkeepalive. Enviar keepalives en el flujo RTP para mantener NAT abierto durante períodos donde el tráfico RTP puede no estar fluyendo. Asterisk: t38pt_udptl. Activa pasarela T38 entre los canales SIP que soporten envío y recepción de faxes usando el codec T38. Asterisk en este caso no podrá procesar los medios. Codecs de Audio Configuración Automática Dirección IP de Enlace Puerto de Enalce Eventos de Llamada Certificado Marque los codecs deseados, todos los demás serán deshabilitados a menos que los habilite expresamente en la configuración de un teléfono o troncal. Arrastre y suelte para reordenar. Marque para habilitar y elegir los codecs permitidos. Controla si suscripciones de estensiones en uso mostrarán hold. Util si utiliza BLF. Controla si suscripciones de extensiones en uso mostrarán ringing cuando reciban una segunda llamada. Util si utiliza BLF. Contexto por Defecto Idioma por defecto (Asterisk: language) Deshabilitado Deshabilitado Host Dinámico IP Dinámica ERRORES Editar Configuraciones PJSIP Editar Configuraciones SIP Habilitado Activar búsquedas SRV en Asterisk. Vea en documentación de Asterisk las limitaciones existentes en la funcionalidad SRV Habilitar Websocket Activar manejo de conexiones websocket a través de chan_sip. Si prefiere manejar websockets/webrtc via PJSIP, ponga esta configuración en no Habilitado FQDN externo como se ve del lado WAN del router y actualizado dinámicamente. Por ejemlo: midominio.dyndns.com. (asterisk: externhost) IP Externa La dirección IP externa no puede quedar en blanco Dirección IP Externa estática o FQDN como se ve del lado WAN del router. (asterisk: externip) Fallo al autodetectar la configuración de red local Fallo al autodetectar configuraciones Forzar Jitter Buffer Frecuencia en segundos para verificar si hay mensajes en espera e informar a los peers. Generar eventos de manager cuando un dispositivo sip realiza acciones como ser hold/espera Configuración IP Implementación Especifique si el servidor tiene una IP pública o requiere configuración de NAT. Configuración automática de lo que usualmente se completa en sip_nat.conf Configuración Jitter Buffer Tamaño Jitter Buffer Idioma Redes Locales Configuración de Redes Locales (Asterisk: localnet) en el formato IP/MASCARA como ser 192.168.1.0/255.255.255.0. Para redes con más de una subred, use el botón Agregar Red Local para añadir las que necesite. Los valores en blanco serán eliminados al enviar los cambios. Configuración Medios & RTP Frecuencia Verificación MWI Tasa de Bits Máxima Tasa Máxima de bits a utilizar en video llamadas, especificado en kb/s Configuraciones NAT No No Estándar g726 Notificación & MWI Notificar Hold Notificar Timbrado Otras Configuraciones SIP IP Pública Rango de Puertos RTP Temporizadores RTP Tasa de Refresco Configuraciones de Registro Tiempos de Registro Registros Comportamiento Reinvite Busqueda SRV IP Estática Guardar Cambios Pasarela T38 Transporte TCP/UDP Puerto de Enalce TLS Archivo de certificado a utilizar para TLS Transporte TLS Codecs de Video Soporte de Video Si Puede adicionar configuraciones SIP que no estén presentes en este formulario. No habrá chequeo de errores contra estos seteos, por lo que debeser cuidadoso ya existe no si 