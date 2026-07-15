static void onReceiveMessage(SKSE::MessagingInterface::Message *message){

  if (message->type == SKSE::MessagingInterface::kDataLoaded){
     RE::ConsoleLog::GetSingleton()->Print("Hello, world!");
  }

}

SKSEPluginLoad(const SKSE::LoadInterface *skse) {
    SKSE::Init(skse);

    // Once all plugins and mods are loaded, then the ~ console is ready and can
    // be printed to
    const SKSE::MessagingInterface* mi = SKSE::GetMessagingInterface();
    mi->RegisterListener(onReceiveMessage);

    return true;
}