

goto start


echo "123"

:: 延时的2种方法
:: TIMEOUT /T 10 延时方法一：10秒
:: TIMEOUT /T 5 >null 屏幕没有倒计时提示的延迟5秒
:: ping -n 5 127.0.0.1  延时方法二：10秒



echo "321"
:: echo是输出

pause
:: pause是暂停，程序执行完后不关闭窗口

sc config 服务名 start= demand     //手动
sc config 服务名 start= auto       //自动
sc config 服务名 start= disabled //禁用
sc start 服务名　　开启服务
sc stop 服务名　　停止服务
sc query 服务名　　查看服务状态
sc delete  服务名    删除服务
sc qc 服务名      查看服务的配置信息
sc create your_scname binPath="D:\Program Files (x86)\xxx.exe"　　创建服务/将普通可执行文件创建为服务


C:\Windows\system32>sc/?
错误:  未知命令
描述:
        SC 是用来与服务控制管理器和服务进行通信
        的命令行程序。
用法:
        sc <server> [command] [service name] <option1> <option2>.
        <server> 选项的格式为 "\\ServerName"
        可通过键入以下内容，获得有关命令的进一步帮助: "sc [comman
        命令:
          query-----------查询服务的状态，或枚举服务类型的状态。
          queryex---------查询服务的扩展状态，或枚举服务类型的状态。
          start-----------启动服务。
          pause-----------向服务发送 PAUSE 控制请求。
          interrogate-----向服务发送 INTERROGATE 控制请求。
          continue--------向服务发送 CONTINUE 控制请求。
          stop------------向服务发送 STOP 请求。
          config----------更改服务的配置(永久)。
          description-----更改服务的描述。
          failure---------更改服务失败时执行的操作。
          failureflag-----更改服务的失败操作标记。
          sidtype---------更改服务的服务 SID 类型。
          privs-----------更改服务的所需权限。
          managedaccount--更改服务以便将服务帐户密码，标记为由 LSA 管理。
          qc--------------查询服务的配置信息。
          qdescription----查询服务的描述。
          qfailure--------查询服务失败时执行的操作。
          qfailureflag----查询服务的失败操作标记。
          qsidtype--------查询服务的服务 SID 类型。
          qprivs----------查询服务的所需权限。
          qtriggerinfo----查询服务的触发器参数。
          qpreferrednode--查询服务的首选 NUMA 节点。
          qrunlevel-------查询服务的运行级别。
          qmanagedaccount-查询服务是否将帐户，与 LSA 管理的密码结合使用。
          qprotection-----查询服务的进程保护级别。
          delete----------(从注册表中)删除服务。
          create----------创建服务(并将其添加到注册表中)。
          control---------向服务发送控制。
          sdshow----------显示服务的安全描述符。
          sdset-----------设置服务的安全描述符。
          showsid---------显示与任意名称对应的服务 SID 字符串。
          triggerinfo-----配置服务的触发器参数。
          preferrednode---设置服务的首选 NUMA 节点。
          runlevel--------设置服务的运行级别。
          GetDisplayName--获取服务的 DisplayName。
          GetKeyName------获取服务的 ServiceKeyName。
          EnumDepend------枚举服务依赖关系。

        以下命令不要求使用服务名称:
        sc <server> <command> <option>
          boot------------(ok | bad) 指示是否应将上一次引导保存为
                          最近一次已知的正确引导配置
          Lock------------锁定服务数据库
          QueryLock-------查询 SCManager 数据库的 LockStatus
示例:
        sc start MyService






sc config:用法：
C:\Users\liqiang>sc config MySQL57
描述:
        在注册表和服务数据库中修改服务项。
用法:
        sc <server> config [service name] <option1> <option2>...

选项:
注意: 选项名称包括等号。
      等号和值之间需要一个空格。
 type= <own|share|interact|kernel|filesys|rec|adapt>
 start= <boot|system|auto|demand|disabled|delayed-auto>
 error= <normal|severe|critical|ignore>
 binPath= <BinaryPathName to the .exe file>
 group= <LoadOrderGroup>
 tag= <yes|no>
 depend= <依存关系(以 / (斜杠) 分隔)>
 obj= <AccountName|ObjectName>
 DisplayName= <显示名称>
 password= <密码>






:start



