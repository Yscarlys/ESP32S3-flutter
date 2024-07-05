/*StreamBuilder<ConnectionResult>(
              stream: allBluetooth.listenForConnection,
              builder: (context, snapshot) {
                final state = snapshot.data?.state ?? false;
                if (state == true) {
                  final device = snapshot.data!.device;
                  print(device);
                  // return Container(width: 60, height: 40, color: Color(0xffffffff));
                  return const SizedBox(
                    width: 0.0,
                    height: 0.0,
                  );
                }
                // return Container(width: 40, height: 60, color: Color(0xffffffff));
                return const SizedBox(
                  width: 0.0,
                  height: 0.0,
                );
              },
            ),*/