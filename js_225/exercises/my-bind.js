function myBind(func, context, ...bindArguments) {
  return function(...args) {
    const fullArgs = bindArguments.concat(args);
    return func.apply(context, fullArgs);
  };
}