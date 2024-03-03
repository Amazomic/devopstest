FROM mcr.microsoft.com/dotnet/aspnet:7.0 
WORKDIR home/ChatRoom/

COPY ChatRoom.Client/bin ChatRoom.Client/bin
COPY ChatRoom.Client/obj ChatRoom.Client/obj
COPY ChatRoom.Common/bin ChatRoom.Common/bin
COPY ChatRoom.Common/obj ChatRoom.Common/obj
COPY ChatRoom.Service/bin ChatRoom.Service/bin
COPY ChatRoom.Service/obj ChatRoom.Service/obj

WORKDIR ChatRoom.Service/bin/Release/net7.0
ENTRYPOINT ["dotnet", "ChatRoom.Service.dll"]
