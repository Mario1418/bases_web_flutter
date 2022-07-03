//HANDLERS
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final Handler counterHandler = Handler(handlerFunc: (context, params) {
  //print(params['base']?[0]);
  return CounterView(base: params['base']?.first ?? '5');
});

final Handler counterProviderHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?.first ?? '10');
});

final Handler dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return const View404();
});

//404

final Handler pageNotFound = Handler(handlerFunc: (_, __) => const View404());
